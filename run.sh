current_dir=$(pwd)
###
 # @Author: Hongkun Luo
 # @Date: 2024-04-06 09:47:17
 # @LastEditors: Hongkun Luo
 # @Description: 
 # 
 # Hongkun Luo
### 
mkdir build
cd build
cmake ..
make -j4
echo "可执行文件已经编译完成"
