/*
 * @Author: Hongkun Luo
 * @Date: 2024-04-04 21:51:05
 * @LastEditors: Hongkun Luo
 * @Description: 
 * 
 * Hongkun Luo
 */
#include "fbow.h"
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <iostream>
#include <vector>
#include <string>


#include <torch/torch.h>
// #include <opencv2/opencv.hpp>
// #include <iostream>
#include <stdio.h>
#include "SPextractor.h"

#include <string>
#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;
using namespace cv;
using namespace std;
using namespace DPLextractor;

int main( int argc, char** argv )
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
    
    // 创建字典
    //训练词点
    //训练词典的参数
    fbow::VocabularyCreator::Params params;
    //fbow::VocabularyCreator::Params params;
    //叶子节点的个数
    params.k = 10;
    //树的高度
    params.L = 5;
    //使用的线程数量
    params.nthreads=1;
    //最大迭代次数
    params.maxIters=0;
    //词典创建工具
    fbow::VocabularyCreator vocabCat;
    //词典
    cout<<"creating vocabulary ... "<<endl;
    fbow::Vocabulary vocab;
    vocabCat.create(vocab,descriptors,"hf-net",params);
    //保存词典
    vocab.saveToFile("filename");
    cout<<"done"<<endl;
    return 0;
}