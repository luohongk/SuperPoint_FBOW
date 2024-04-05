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

# 获取脚本所在的目录路径
script_dir=$(cd "$(dirname "$0")" && pwd)

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
    # 返回到脚本所在的目录
    cd "$script_dir"
else
    echo "fbow已经编译完成"
fi

mkdir build
cd build
cmake ..
make -j4


