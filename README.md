# SuperPoint_FBOW

本项目是通过SuerPoint与fbow来训练一个基于深度学习词袋

## 使用的教学视频

<iframe src="https://player.bilibili.com/player.html?aid=1702893113&bvid=BV1TT421m7Tj&cid=1496085889&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>

## 第三方库依赖

opencv3.2.0（opencv4我还没测试过)

libtorch1.0.1

fbow(参考官方仓库：https://github.com/rmsalinas/fbow)

## 步骤说明

如果图片名称都转换完毕了，那就开始如下步骤

1. 下载仓库

   ```
   git clone https://github.com/luohongk/SuperPoint_FBOW.git
   cd SuperPoint_FBOW
   ```
2. 安装libtorch库

   ```
   项目根目录执如下命令
   chmod +x libtorch_download.sh
   ./libtorch_download.sh
   ```
3. 编译superpoint
   在编译superpoint之前，请你先将目录SuperPoint_FBOW/superpoint/src/SPextractor.cc文件中的第152行的权重路径换乘superpoint.pt在你电脑上的绝对路径。

   ```
   项目根目录执如下命令
   chmod +x build_superpoint.sh
   ./build_superpoint.sh
   ```

   编译完成后项目根目录superpoint下有一个build文件夹。build文件夹下有一个libsuperpoint.so。把libsuperpoint.so复制到（根目录/utils/superpoint)。
4. 编译main入口文件

   在编译之前，请你将SuperPoint_FBOW/utils/fbow_create_voc_step0.cpp文件中的一部分代码设置成你想要的路径。`   string outputfilename ="/home/lhk/data/output/superpoint.fbow";这里注意一定要有superpoint.fbow!!!`

   第168行 `std::stringfolderPath="/home/lhk/workspace/SuperPoint_FBOW/utils/renamed_images"; // 替换为你的训练图片的文件夹路径`

   ```
      string des="descriptor";
       string outputfilename ="/home/lhk/data/output/superpoint.fbow";
       // 将特征保存到文件
       std::cerr << "saving to " <<outputfilename<< std::endl;
       saveToFile(outputfilename,descriptors,des);
       return 0;
   ```

   ```
   项目根目录执如下命令
   chmod +x run.sh
   ./run.sh
   ```
5. 运行输出深度学习描述子（当然，这里也可以输出深度学习特征点，具体就看看代码)

   ```
   项目根目录执如下命令
   chmod +x run.sh
   ./run.sh
   ```
6. 输出词袋

   ```
   ./fbow_create_voc_step1 /home/lhk/workspace/SuperPoint_FBOW/output/superpoint.fbow /home/lhk/workspace/SuperPoint_FBOW/output/superpointVoc.txt
   ```

### 系统说明

系统：ubuntu18.04（其他系统没有测试过，可能会出现一些bug)

### 图片名称转换说明(如果想要训练自己的图片的话)

需要训练的图片放置在 `imges`文件夹。在进行训练之前需要用 `python`先对 `images`文件夹中的图片重命名。

首先得电脑中得能运行python代码。（pyhton环境配置)

安装os,shutil这两个库(一般都自带)

图片名称转换，运行如下代码

```
git clone https://github.com/luohongk/SuperPoint_FBOW.git
cd SuperPoint_FBOW
python ./imagesProcess.py
```
