cmake_minimum_required(VERSION 3.10)
SET(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)
#set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")
project(Stm32_baremetal C ASM)
#libraries
add_library(startup_files src/startup_stm32f303xe.s)
#definitions
add_definitions(-DTemplate1)
add_definitions(-DSTM32F303xE)
#files
file(GLOB_RECURSE src_files "src/*.c")
file(GLOB_RECURSE inc_files "inc/ST/*.c")
#file(GLOB_RECURSE startup_files "src/startup_stm32f303xe.s")
#includes
include_directories(inc/CMSIS/Core)
include_directories(inc/ST)
include_directories(lib)
#executables
add_executable(${PROJECT_NAME}.elf ${src_files} ${LINKER_SCRIPT})
target_link_libraries(${PROJECT_NAME}.elf startup_files)
SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Map=${PROJECT_SOURCE_DIR}/build/${PROJECT_NAME}.map")
#print code size output
add_custom_command(TARGET ${PROJECT_NAME}.elf POST_BUILD
        COMMAND arm-none-eabi-size --format=berkeley "${PROJECT_NAME}.elf")
