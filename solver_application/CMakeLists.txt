cmake_minimum_required(VERSION 3.10)
project(solver_app)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(solver_app equation.cpp)

target_link_libraries(solver_app formatter_ex solver_lib)

target_include_directories(solver_app PUBLIC ../formatter_ex_lib ../solver_lib ${CMAKE_CURRENT_SOURCE_DIR})
