# 定义宏，避免在 Windows 平台上出现宏定义的冲突问题
ADD_DEFINITIONS(-DNOMINMAX)

# 设置源文件和头文件
SET(  srcs  fbow.cpp  vocabulary_creator.cpp )
SET(  hdrs  fbow.h fbow_exports.h vocabulary_creator.h cpu.h)

# 设置库名称
SET (THIS_LIBNAME ${EXTRALIBNAME}fbow)

# 添加库
ADD_LIBRARY(${THIS_LIBNAME} ${srcs} ${hdrs})

# 设置库的属性，包括符号链接、版本、输出名称等
SET_TARGET_PROPERTIES(${THIS_LIBNAME} PROPERTIES
        DEFINE_SYMBOL FBOW_DSO_EXPORTS
        VERSION ${PROJECT_VERSION}
        SOVERSION ${PROJECT_SOVERSION}
        CLEAN_DIRECT_OUTPUT 1
        OUTPUT_NAME "${THIS_LIBNAME}${PROJECT_DLLVERSION}"
)

# 链接所需的库
TARGET_LINK_LIBRARIES(${THIS_LIBNAME} ${OpenCV_LIBS} ${OpenMP_CXX_LIBRARIES})

# 安装目标文件到指定目录
INSTALL(TARGETS ${THIS_LIBNAME}
        RUNTIME DESTINATION bin COMPONENT main
        LIBRARY DESTINATION lib PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE COMPONENT main
        ARCHIVE DESTINATION lib COMPONENT main)

# 如果是开发安装模式，则安装头文件
IF(FBOW_DEVINSTALL)
    INSTALL(FILES ${hdrs}
            DESTINATION include/fbow
            COMPONENT main)
ENDIF()

