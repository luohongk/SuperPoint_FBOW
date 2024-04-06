# CMake file for sba's demo program
# INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/src /home/mjmarin/libs/ORB_SLAM2/include)
LINK_LIBRARIES(${PROJECT_NAME})

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/superpoint/include)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/superpoint/libtorch/include/torch/csrc/api/include/)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/superpoint/libtorch/include/)
# /home/lhk/workspace/SuperPoint_FBOW/superpoint/libtorch/include/torch/csrc/api/include/torch
SET(SUPERPOINT_LIB ${CMAKE_CURRENT_SOURCE_DIR}/superpoint/lib/libsuperpoint.a)
INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/src )

ADD_EXECUTABLE(fbow_create_voc_step0 fbow_create_voc_step0.cpp dirreader.h)
target_link_libraries(fbow_create_voc_step0 -lstdc++fs ${SUPERPOINT_LIB})

ADD_EXECUTABLE(fbow_create_voc_step0_list fbow_create_voc_step0_list.cpp)
target_link_libraries(fbow_create_voc_step0_list -lstdc++fs ${SUPERPOINT_LIB})

ADD_EXECUTABLE(fbow_create_voc_step1 fbow_create_voc_step1.cpp)
target_link_libraries(fbow_create_voc_step1 -lstdc++fs ${SUPERPOINT_LIB})

ADD_EXECUTABLE(fbow_transform fbow_transform.cpp)
target_link_libraries(fbow_transform ${SUPERPOINT_LIB})

ADD_EXECUTABLE(image_matching image_matching.cpp)
target_link_libraries(image_matching  ${SUPERPOINT_LIB})

INSTALL(TARGETS  fbow_create_voc_step0    fbow_create_voc_step1 fbow_transform RUNTIME DESTINATION bin)
