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

编译superpoint

```
chmod +x build_superpoint.sh
./build_superpoint.sh
```

编译完成后项目根目录superpoint下有一个build文件夹。build文件夹下有一个libsuperpoint.so。把libsuperpoint.so复制到（根目录/utils/superpoint)。

编译

```
chmod +x run.sh
./run.sh
```

（目前编译的时候有点小问题，说是fbow的两个函数链接不上，气死我了）。

### 硬件说明

系统：ubuntu18.04

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
