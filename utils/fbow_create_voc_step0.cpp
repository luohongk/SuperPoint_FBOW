// 从一组图像中提取特征是创建词汇的第一步。我们将其保存到文件以供下一步使用

// 包含所需的头文件和库
#include <iostream>
#include <fstream>
#include <vector>
#include "fbow.h"

// OpenCV
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d/features2d.hpp>
#ifdef USE_CONTRIB
#include <opencv2/xfeatures2d/nonfree.hpp>
#include <opencv2/xfeatures2d.hpp>
#endif
#include "dirreader.h"
#include <torch/torch.h>
// #include <opencv2/opencv.hpp>
// #include <iostream>
#include <stdio.h>
#include "SPextractor.h"
#include "vocabulary_creator.h"
#include "fbow_exports.h"
#include "cpu.h"

#include <string>
#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;
using namespace cv;
using namespace DPLextractor;

using namespace fbow;
using namespace std;
// using namespace DPLextractor;

// 命令行解析器
class CmdLineParser
{
    int argc;
    char **argv;

public:
    CmdLineParser(int _argc, char **_argv) : argc(_argc), argv(_argv) {}
    bool operator[](string param)
    {
        int idx = -1;
        for (int i = 0; i < argc && idx == -1; i++)
            if (string(argv[i]) == param)
                idx = i;
        return (idx != -1);
    }
    string operator()(string param, string defvalue = "-1")
    {
        int idx = -1;
        for (int i = 0; i < argc && idx == -1; i++)
            if (string(argv[i]) == param)
                idx = i;
        if (idx == -1)
            return defvalue;
        else
            return (argv[idx + 1]);
    }
};

// 等待用户输入
void wait()
{
    cout << endl
         << "Press enter to continue" << endl;
    getchar();
}

// 从图像中加载特征
vector<cv::Mat> loadFeatures(std::vector<string> path_to_images, string descriptor = "")
{
    // 选择特征检测器
    cv::Ptr<cv::Feature2D> fdetector;
    if (descriptor == "orb")
        fdetector = cv::ORB::create(2000);
    else if (descriptor == "brisk")
        fdetector = cv::BRISK::create();
#ifdef OPENCV_VERSION_3
    else if (descriptor == "akaze")
        fdetector = cv::AKAZE::create(cv::AKAZE::DESCRIPTOR_MLDB, 0, 3, 1e-4);
#endif
#ifdef USE_CONTRIB
    else if (descriptor == "surf")
        fdetector = cv::xfeatures2d::SURF::create(15, 4, 2);
#endif

    else
        throw std::runtime_error("Invalid descriptor");
    assert(!descriptor.empty());
    vector<cv::Mat> features;

    cout << "Extracting   features..." << endl;
    for (size_t i = 0; i < path_to_images.size(); ++i)
    {
        vector<cv::KeyPoint> keypoints;
        cv::Mat descriptors;
        cout << "reading image: " << path_to_images[i] << endl;
        cv::Mat image = cv::imread(path_to_images[i], 0);
        if (image.empty())
        {
            std::cerr << "Could not open image:" << path_to_images[i] << std::endl;
            continue;
        }
        fdetector->detectAndCompute(image, cv::Mat(), keypoints, descriptors);
        cout << "extracting features: total= " << keypoints.size() << endl;
        features.push_back(descriptors);
        cout << "done detecting features" << endl;
    }
    return features;
}

// 保存特征到文件
void saveToFile(string filename, const vector<cv::Mat> &features, std::string desc_name, bool rewrite = true)
{

    // 测试文件是否存在
    if (!rewrite)
    {
        std::fstream ifile(filename, std::ios::binary);
        if (ifile.is_open()) // 读取大小并重写
            std::runtime_error("ERROR::: Output File " + filename + " already exists!!!!!");
    }
    std::ofstream ofile(filename, std::ios::binary);
    if (!ofile.is_open())
    {
        cerr << "could not open output file" << endl;
        exit(0);
    }

    char _desc_name[20];
    desc_name.resize(min(size_t(19), desc_name.size()));
    strcpy(_desc_name, desc_name.c_str());
    ofile.write(_desc_name, 20);

    uint32_t size = features.size();
    ofile.write((char *)&size, sizeof(size));
    for (auto &f : features)
    {
        if (!f.isContinuous())
        {
            cerr << "Matrices should be continuous" << endl;
            exit(0);
        }
        uint32_t aux = f.cols;
        ofile.write((char *)&aux, sizeof(aux));
        aux = f.rows;
        ofile.write((char *)&aux, sizeof(aux));
        aux = f.type();
        ofile.write((char *)&aux, sizeof(aux));
        ofile.write((char *)f.ptr<uchar>(0), f.total() * f.elemSize());
    }
}

// 主函数
int main(int argc, char **argv)
{

    // read the image
    cout << "reading images... " << endl;
    vector<Mat> images;

    // 获得文件夹中图片的数量
    std::string folderPath = "renamed_images"; // 替换为你的文件夹路径

    int pngCount = 0;

    // 遍历文件夹中的每个文件
    for (const auto &entry : fs::directory_iterator(folderPath))
    {
        if (entry.status().type() == fs::file_type::regular)
        {
            // 检查文件扩展名是否为 ".png"
            if (entry.path().extension() == ".png")
            {
                pngCount++;
            }
        }
    }

    for (int i = 0; i < pngCount; i++)
    {
        string path = "./renamed_images/" + to_string(i + 1) + ".png";
        images.push_back(imread(path));
    }

    // dpl Features
    SPextractor *spextractor = new SPextractor(500, 1.2, 4, 0.015, 0.007);
    std::vector<cv::KeyPoint> mvKeys;
    cv::Mat mDescriptors;
    vector<cv::Mat> descriptors;

    for (Mat &image : images)
    {
        (*spextractor)(image, cv::Mat(), mvKeys, mDescriptors);
        descriptors.push_back(mDescriptors);
    }

    // vector<cv::Mat> features = loadFeatures(images, descriptor);
    
    string des="descriptor";
    // 将特征保存到文件
    std::cerr << "saving to " << argv[0] << std::endl;
    saveToFile(argv[0],descriptors,des);

    return 0;
}