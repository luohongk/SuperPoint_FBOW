# SuperPoint_FBOW

本项目是通过SuerPoint与fbow来训练一个基于深度学习词袋(持续更新中......)

## 说明

### 环境配置

安装libtorch库

```
chmod +x libtorch_download.sh
./libtorch_download.sh
```

### 硬件说明

系统：ubuntu18.04

### 问题说明

在编译的过程中会遇到如下问题

```
/usr/bin/ld: 找不到 -lTorch
collect2: error: ld returned 1 exit status
CMakeFiles/feature_training_fbow.dir/build.make:98: recipe for target 'feature_training_fbow' failed
make[2]: *** [feature_training_fbow] Error 1
CMakeFiles/Makefile2:104: recipe for target 'CMakeFiles/feature_training_fbow.dir/all' failed
make[1]: *** [CMakeFiles/feature_training_fbow.dir/all] Error 2
Makefile:83: recipe for target 'all' failed
make: *** [all] Error 2
```

这说明没有找到Torch。




sudo ln -s /home/lhk/Thirdparty/libtorch/libtorch/lib/libtorch.so /usr/local/lib/libtorch.so

sudo ln -s /home/lhk/Thirdparty/libtorch_cpu/lib/libtorch.so /usr/local/lib/libtorch.so

### 图片名称转换说明

需要训练的图片放置在 `imges`文件夹。在进行训练之前需要用 `python`先对 `images`文件夹中的图片重命名。

首先得电脑中得能运行python代码。（pyhton环境配置)

安装os,shutil这两个库(一般都自带)

图片名称转换，运行如下代码

```
git clone https://github.com/luohongk/SuperPoint_FBOW.git
cd SuperPoint_FBOW
python ./imagesProcess.py
```
