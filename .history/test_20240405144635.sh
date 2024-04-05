# 编译fbow
###
 # @Author: Hongkun Luo
 # @Date: 2024-04-05 14:23:32
 # @LastEditors: Hongkun Luo
 # @Description: 
 # 
 # Hongkun Luo
### 
current_dir=$(pwd)
echo "当前目录的绝对路径是: $current_dir"

cd lib
mkdir fbow
cd ../Thirdparty/fbow
if [ ! -d "build" ]; then
    mkdir build
    cd build
    cmake -D CMAKE_INSTALL_PREFIX="$current_dir/lib/fbow"  ..
    make -j4
    echo "fbow库编译完成"
    make install
    echo "fbow库安装完成"
else
    echo "fbow已经编译完成"
fi


