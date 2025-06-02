cmake_minimum_required(VERSION 3.30)
project(solver_app)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

target_link_libraries(solver_app formatter_ex solver_lib)
