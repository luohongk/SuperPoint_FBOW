# 编译fbow
###
 # @Author: Hongkun Luo
 # @Date: 2024-04-05 14:23:32
 # @LastEditors: Hongkun Luo
 # @Description: 
 # 
 # Hongkun Luo
### 
cd Thirdparty
if [ ! -d "build" ]; then
    echo "正在下载libtorch ..."
    wget https://github.com/luohongk/tool_and_lib/releases/download/libtorch/libtorch.zip
    echo "正在解压libtorch ..."
    unzip -q libtorch.zip -d .
    echo "正在删除压缩包文件 ..."
    rm libtorch.zip
    cd ../
else
    echo "fbow已经编译完成"
fi