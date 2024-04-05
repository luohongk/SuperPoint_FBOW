###
 # @Author: Hongkun Luo
 # @Date: 2024-04-05 13:58:33
 # @LastEditors: Hongkun Luo
 # @Description: 
 # 
 # Hongkun Luo
### 
# 下载第三方库libtorch(已经编译过的)
cd Thirdparty

if [ ! -d "libtorch" ]; then
    echo "正在下载libtorch ..."
    wget https://github.com/luohongk/tool_and_lib/releases/download/libtorch/libtorch.zip
    echo "正在解压libtorch ..."
    unzip -q libtorch.zip -d .
    echo "正在删除压缩包文件 ..."
    rm libtorch.zip
    cd ../
else
    echo "libtorch文件夹已存在，跳过下载和解压步骤。"
fi







