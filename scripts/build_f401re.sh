#!/bin/bash

rm -rf build/

cmake -B build/ \
      -DCMAKE_TOOLCHAIN_FILE=cmake/arm-none-eabi.cmake \
      -DMCU=STM32F401xE \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \

cmake --build build/
