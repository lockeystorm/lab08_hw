cmake_minimum_required(VERSION 3.30)
project(solver)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(solver_lib)
add_subdirectory(solver_application)

install(TARGETS formatter formatter_ex solver_lib
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    INCLUDES DESTINATION include
)

install(DIRECTORY 
    formatter_lib/
    formatter_ex_lib/
    solver_lib/
    DESTINATION include
    FILES_MATCHING PATTERN "*.h"
)



