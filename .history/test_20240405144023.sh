# 编译fbow
###
 # @Author: Hongkun Luo
 # @Date: 2024-04-05 14:23:32
 # @LastEditors: Hongkun Luo
 # @Description: 
 # 
 # Hongkun Luo
### 
cd Thirdparty/fbow
if [ ! -d "build" ]; then
    mkdir build
    cd build
    cmake ..
    make -j4
    echo "fbow库编译完成"
else
    echo "fbow已经编译完成"
fi


