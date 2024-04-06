echo "当前目录的绝对路径是: $current_dir"
###
 # @Author: Hongkun Luo
 # @Date: 2024-04-06 13:05:46
 # @LastEditors: Hongkun Luo
 # @Description: 
 # 
 # Hongkun Luo
### 
# 获取脚本所在的目录路径
script_dir=$(cd "$(dirname "$0")" && pwd)
cd superpoint
if [ ! -d "build" ]; then
    mkdir build
    cd build
    cmake ..
    make -j4
    echo "SuperPoint已经编译完成"
else
    echo "SuperPoint已经编译过了,上一次编译还没删除"
fi