# 设置项目名称和最低要求的 CMake 版本
cmake_minimum_required(VERSION 2.8)
project(superpoint)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)

# 设置静态库的输出路径
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# 设置安装目录
set(INSTALL_DIR ${CMAKE_SOURCE_DIR}/install)

# 添加源文件
set(SOURCES
    src/SPextractor.cc
    src/SuperPoint.cc
)

find_package(Torch REQUIRED PATHS ${PROJECT_SOURCE_DIR}/libtorch)
find_package(OpenCV 3 REQUIRED)


# 添加头文件路径
include_directories(include)
include_directories(${TORCH_INCLUDE_DIRS})

link_libraries(
${TORCH_LIBRARIES}
${OpenCV_LIBS}
)

# 编译成静态库
add_library(superpoint SHARED ${SOURCES})

# 如果有其他需要链接的库，可以在这里添加
target_link_libraries(superpoint ${TORCH_LIBRARIES})

# 如果你想将生成的库安装到指定目录，可以取消下面两行的注释，并根据需要调整路径
install(TARGETS superpoint LIBRARY DESTINATION ${INSTALL_DIR}/lib)
install(DIRECTORY include/ DESTINATION ${INSTALL_DIR}/include)