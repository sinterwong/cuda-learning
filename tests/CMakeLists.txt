CMAKE_MINIMUM_REQUIRED(VERSION 3.10)
PROJECT(Tests)

INCLUDE_DIRECTORIES(
    ${PROJECT_INCLUDE_DIR}
    ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES}
)

LINK_DIRECTORIES(
    ${COMMON_LIBRARY_DIR}
    ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES}
)


LINK_LIBRARIES(
    pthread
    ${CUDA_cublas_LIBRARY}
    ${CUDA_LIBRARIES}
    ${CUDA_cusparse_LIBRARY}
)

FILE(GLOB CU_APP_SOURCES *.cu)
MESSAGE(STATUS "APP SOURCES: ${CU_APP_SOURCES}")
FOREACH(sourcefile ${CU_APP_SOURCES})
    STRING(REGEX MATCH "[^/]+$" sourcefilewithoutpath ${sourcefile})
    STRING(REPLACE ".cu" "" testname ${sourcefilewithoutpath})
    # MESSAGE("-- CUDA version: ${CUDA_VERSION} ${CUDA_NVCC_FLAGS}")
    CUDA_ADD_EXECUTABLE( ${testname} ${sourcefile})
    SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin/tests)
    target_compile_options(${testname} PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:
                        -arch=sm_87;
                        -std=c++17;
                        -rdc=true;
                        -Xcompiler;
                        -pthread
                        -lnvshmem 
                        -lmpi_cxx 
                        -lmpi
                       >)

    INSTALL(TARGETS ${testname}
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin)
ENDFOREACH(sourcefile ${CU_APP_SOURCES})

FILE(GLOB APP_SOURCES *.cpp)
MESSAGE(STATUS "APP SOURCES: ${APP_SOURCES}")
FOREACH(sourcefile ${APP_SOURCES})
    STRING(REGEX MATCH "[^/]+$" sourcefilewithoutpath ${sourcefile})
    STRING(REPLACE ".cpp" "" testname ${sourcefilewithoutpath})
    ADD_EXECUTABLE( ${testname} ${sourcefile})
    SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin/tests)

    INSTALL(TARGETS ${testname}
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin)
ENDFOREACH(sourcefile ${APP_SOURCES})
