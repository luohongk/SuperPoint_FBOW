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
echo "正在下载libtorch ..."
wget https://github.com/luohongk/SuperPoint_FBOW/releases/download/libtorch/libtorch.zip
echo "正在解压libtorch ..."
unzip libtorch.zip -d .
echo "正在删除压缩包文件 ..."
rm libtorch.zip
cd ../



