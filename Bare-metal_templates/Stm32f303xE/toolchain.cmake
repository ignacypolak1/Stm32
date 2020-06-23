SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
SET(CMAKE_C_COMPILER arm-none-eabi-gcc)
SET(CMAKE_CXX_COMPILER arm-none-eabi-g++)
SET(CMAKE_C_COMPILER_WORKS 1)
SET(CMAKE_CXX_COMPILER_WORKS 1)
SET(CMAKE_ASM_COMPILER arm-none-eabi-gcc)
SET(CMAKE_BUILD_TYPE Debug)
set(CMAKE_C_FLAGS_DEBUG "-D_DEBUG")

#Specify linker script
SET(LINKER_SCRIPT ${PROJECT_SOURCE_DIR}/src/STM32F303RETx_FLASH.ld)
#create memory map
#SET(CMAKE_EXE_LINKER_FLAGS_INIT "-T ${LINKER_SCRIPT}")
SET(COMMON_FLAGS "-mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -O0 -mthumb  -ffunction-sections -fdata-sections -mfloat-abi=hard -g -fno-common -fmessage-length=0 -specs=nano.specs ")
SET(CMAKE_CXX_FLAGS  "${COMMON_FLAGS} -std=c++14")
SET(CMAKE_C_FLAGS  "${COMMON_FLAGS} -std=gnu11")
SET(CMAKE_EXE_LINKER_FLAGS_INIT "-Wl,-gc-sections -specs=nosys.specs -T ${LINKER_SCRIPT}")
