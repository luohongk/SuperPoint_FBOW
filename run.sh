current_dir=$(pwd)
###
 # @Author: Hongkun Luo
 # @Date: 2024-04-06 09:47:17
 # @LastEditors: Hongkun Luo
 # @Description: 
 # 
 # Hongkun Luo
### 
echo "当前目录的绝对路径是: $current_dir"

# 获取脚本所在的目录路径
script_dir=$(cd "$(dirname "$0")" && pwd)

if [ ! -d "build" ]; then
    mkdir build
    cd build
    cmake ..
    make -j4
    echo "fbow已经编译完成"
else
    echo "fbow已经编译完成"
fi