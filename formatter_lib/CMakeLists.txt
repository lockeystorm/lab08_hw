cmake_minimum_required(VERSION 3.10)
project(formatter)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(LIB_SOURCE formatter.h formatter.cpp)

add_library(formatter STATIC ${LIB_SOURCE})
