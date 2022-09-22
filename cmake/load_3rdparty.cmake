SET(3RDPARTY_ROOT ${PROJECT_SOURCE_DIR}/3rdparty)
SET(3RDPARTY_DIR ${PROJECT_SOURCE_DIR}/3rdparty/target/${TARGET_OS}_${TARGET_ARCH})
MESSAGE(STATUS "3RDPARTY_DIR: ${3RDPARTY_DIR}")

MACRO(LOAD_OPENCV)
    FIND_PACKAGE(OpenCV CONFIG REQUIRED opencv_core opencv_highgui opencv_video opencv_imgcodecs opencv_imgproc)
    IF(OpenCV_INCLUDE_DIRS)
        MESSAGE(STATUS "Opencv library status:")
        MESSAGE(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")
        MESSAGE(STATUS "    libraries: ${OpenCV_LIBS}")
    ELSE()
        MESSAGE(FATAL_ERROR "OpenCV not found!")
    ENDIF()
ENDMACRO()

MACRO(LOAD_CUDA)
    FIND_PACKAGE(CUDA REQUIRED)
    MESSAGE("-- CUDA version: ${CUDA_VERSION} ${CUDA_NVCC_FLAGS}")
ENDMACRO()

MACRO(LOAD_FFMPEG)
    FIND_FILE(FFMPEG_INCLUDE_DIR include ${3RDPARTY_DIR}/ffmpeg NO_DEFAULT_PATH)
    FIND_FILE(FFMPEG_LIBRARY_DIR lib ${3RDPARTY_DIR}/ffmpeg NO_DEFAULT_PATH)
    SET(FFMPEG_LIBS 
        avcodec
        avdevice
        avfilter
        avformat
        avutil
        swresample
        swscale
    )
    IF(FFMPEG_INCLUDE_DIR)
        MESSAGE(STATUS "ffmpeg libraries path: ${FFMPEG_INCLUDE_DIR}")
        MESSAGE(STATUS "ffmpeg libraries path: ${FFMPEG_LIBRARY_DIR}")
        MESSAGE(STATUS "ffmpeg libraries : ${FFMPEG_LIBS}")
    ELSE()
        MESSAGE(FATAL_ERROR "FFMPEG_INCLUDE_DIR not found!")
    ENDIF()
ENDMACRO()
