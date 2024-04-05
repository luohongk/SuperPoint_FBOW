/*
 * @Author: Hongkun Luo
 * @Date: 2024-04-04 21:51:05
 * @LastEditors: Hongkun Luo
 * @Description: 
 * 
 * Hongkun Luo
 */
#include "DBoW3.h"
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
#include "../include/SPextractor.h"

#include <string>
#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;
using namespace cv;
using namespace std;
using namespace ORB_SLAM2;

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
    cout<<"creating vocabulary ... "<<endl;
    DBoW3::Vocabulary vocab;
    vocab.create( descriptors );
    cout<<"vocabulary info: "<<vocab<<endl;
    vocab.save( "vocabulary.yml.gz" );
    cout<<"done"<<endl;
      
    return 0;
}