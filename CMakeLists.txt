cmake_minimum_required(VERSION 3.30)
project(solver)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/formatter_lib)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex_lib)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/solver_lib)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/solver_application)

add_executable(solver_app ${CMAKE_CURRENT_SOURCE_DIR}/solver_application/equation.cpp)

install(TARGETS solver_app
    RUNTIME DESTINATION bin
)



