# SuperPoint_FBOW

本项目是通过SuerPoint与fbow来训练一个基于深度学习词袋(持续更新中......)

## 步骤说明

如果图片名称都转换完毕了，那就开始如下步骤

```
git clone https://github.com/luohongk/SuperPoint_FBOW.git
cd SuperPoint_FBOW
```

安装libtorch库

```
chmod +x libtorch_download.sh
./libtorch_download.sh
```

设置libtorch的路径，找到最外层的CMaKeLists.txt

```
set(TORCH_ROOTDIR "/home/lhk/Thirdparty/libtorch")
set(TORCH_ROOTDIR_INCLUDE "/home/lhk/Thirdparty/libtorch/include")
set(TORCH_ROOTDIR_LIB "/home/lhk/Thirdparty/libtorch/lib")
set(TORCH_SO"/home/lhk/Thirdparty/libtorch/lib/libtorch.so")
set(CAFFE2_SO "/home/lhk/Thirdparty/libtorch/lib/libcaffe2.so")
set(TORCH_H "/home/lhk/Thirdparty/libtorch/include/torch/csrc/api/include")
```

将这里面的路径都设置成lib目录下libtorch的路径，这个是从网上下载了解压的一个编译好的libtorch，上面那部分代码修改如下

```
set(TORCH_ROOTDIR "lib/libtorch")
set(TORCH_ROOTDIR_INCLUDE "lib/libtorch/include")
set(TORCH_ROOTDIR_LIB "lib/libtorch/lib")
set(TORCH_SO"lib/libtorch/lib/libtorch.so")
set(CAFFE2_SO "lib/libtorch/lib/libcaffe2.so")
set(TORCH_H "lib/libtorch/include/torch/csrc/api/include")
```

修改完成后就执行如下代码进行编译

```
chmod +x run.sh
./run.sh
```

（目前编译的时候有点小问题，报错：/usr/bin/ld: 找不到 -lTorch)。这里不知道怎么解决

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

这说明没有找到Torch。这个问题不知道该怎么解决

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
