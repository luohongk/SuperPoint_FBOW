cmake_minimum_required( VERSION 2.8 )
project(SUPERPOINT_FBOW)

set( CMAKE_BUILD_TYPE "Release" )
set( CMAKE_CXX_FLAGS "-std=c++11 -O3" )
cmake_policy(SET CMP0015 NEW)


# 设置你自己电脑上安装的libtorch的路径
set(TORCH_ROOTDIR "${PROJECT_SOURCE_DIR}/lib/libtorch")
set(TORCH_ROOTDIR_INCLUDE "${PROJECT_SOURCE_DIR}/lib/libtorch/include")
set(TORCH_ROOTDIR_LIB "${PROJECT_SOURCE_DIR}/lib/libtorch/lib")
set(TORCH_SO "${PROJECT_SOURCE_DIR}/lib/libtorch/lib/libtorch.so")
set(CAFFE2_SO "${PROJECT_SOURCE_DIR}/lib/libtorch/lib/libcaffe2.so")
set(TORCH_H "${PROJECT_SOURCE_DIR}/lib/libtorch/include/torch/csrc/api/include")
# /home/lhk/Thirdparty/libtorch_cpu/lib


set( FBOW_INCLUDE_DIRS "${PROJECT_SOURCE_DIR}/lib/fbow/include/fbow" )
set( FBOW_LIBS "${PROJECT_SOURCE_DIR}/lib/fbow/BIN/" ) 
set( FBOW_BIN "${PROJECT_SOURCE_DIR}/lib/fbow/lib/" ) 
set( FBOW_SO "${PROJECT_SOURCE_DIR}/lib/fbow/lib/libfbow.so") 
set( FBOW_SO1 "${PROJECT_SOURCE_DIR}/lib/fbow/lib/libfbow.so.0.0") 
set( FBOW_SO2 "${PROJECT_SOURCE_DIR}/lib/fbow/lib/libfbow.so.0.0.1") 
 #这里的源代码有误，按这个写


# 寻找库文件
# torch
# 设置你自己电脑上安装的libtorch的路径
find_package(Torch REQUIRED PATHS "/usr/local/lib/libtorch")

# opencv 
find_package( OpenCV 3.1 REQUIRED )


# 生成静态库文件
add_library(DPLextractor
${PROJECT_SOURCE_DIR}/src/SPextractor.cc
${PROJECT_SOURCE_DIR}/src/SuperPoint.cc
# ${OpenCV_LIBS}
)
include_directories(DPLextractor
${OpenCV_INCLUDE_DIRS}
${PROJECT_SOURCE_DIR}/include
${TORCH_ROOTDIR_INCLUDE}
${TORCH_H}
)
link_directories( DPLextractor ${TORCH_ROOTDIR_LIB})
target_link_libraries(DPLextractor ${TORCH_LIBRARIES} ${OpenCV_LIBS})



include_directories(
${OpenCV_INCLUDE_DIRS}
${FBOW_INCLUDE_DIRS}
${TORCH_ROOTDIR_INCLUDE}
)

link_directories(
${OpenCV_LIBS}
${TORCH_SO}
# 我指定的.so文件的路径
${TORCH_ROOTDIR_LIB}
# 我指定的.so文件的路径
# ${FBOW_LIBS}
# find_package找到的路径
# 如果是find_package找到的路径的话就放在target_link_libraries。
${TORCH_LIBRARIES}
${FBOW_LIBS}
${FBOW_BIN}
)

add_executable( feature_training_fbow feature_training_fbow.cpp )
target_link_libraries( feature_training_fbow   DPLextractor  -lstdc++fs ${FBOW_SO} ${FBOW_SO1} ${FBOW_SO2})

add_executable( loop_closure_fbow loop_closure_fbow.cpp )
target_link_libraries( loop_closure_fbow   DPLextractor  -lstdc++fs ${FBOW_SO} ${FBOW_SO1} ${FBOW_SO2})