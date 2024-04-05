# ===================================================================================
#  fbow CMake configuration file
#
#             ** File generated automatically, do not modify **
#
#  Usage from an external project:
#    In your CMakeLists.txt, add these lines:
#
#    FIND_PACKAGE(fbow REQUIRED )
#    TARGET_LINK_LIBRARIES(MY_TARGET_NAME )
#
#    This file will define the following variables:
#      - fbow_LIBS          : The list of libraries to links against.
#      - fbow_LIB_DIR       : The directory where lib files are. Calling LINK_DIRECTORIES
#                                with this path is NOT needed.
#      - fbow_VERSION       : The  version of this PROJECT_NAME build. Example: "1.2.0"
#      - fbow_VERSION_MAJOR : Major version part of VERSION. Example: "1"
#      - fbow_VERSION_MINOR : Minor version part of VERSION. Example: "2"
#      - fbow_VERSION_PATCH : Patch version part of VERSION. Example: "0"
#
# ===================================================================================
INCLUDE_DIRECTORIES("/home/lhk/桌面/SuperPoint_FBOW/lib/fbow/include")
SET(fbow_INCLUDE_DIRS "/home/lhk/桌面/SuperPoint_FBOW/lib/fbow/include")

LINK_DIRECTORIES("/home/lhk/桌面/SuperPoint_FBOW/lib/fbow/lib")
SET(fbow_LIB_DIR "/home/lhk/桌面/SuperPoint_FBOW/lib/fbow/lib")

SET(fbow_LIBS opencv_calib3d;opencv_core;opencv_dnn;opencv_features2d;opencv_flann;opencv_gapi;opencv_highgui;opencv_imgcodecs;opencv_imgproc;opencv_ml;opencv_objdetect;opencv_photo;opencv_stitching;opencv_video;opencv_videoio fbow) 

SET(fbow_FOUND YES)
SET(fbow_FOUND "YES")
SET(fbow_VERSION        0.0.1)
SET(fbow_VERSION_MAJOR  0)
SET(fbow_VERSION_MINOR  0)
SET(fbow_VERSION_PATCH  1)
