cmake_minimum_required(VERSION 3.0.0)
project(order_generate VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()
INCLUDE_DIRECTORIES(${PROJECT_NAME})

add_executable(order_generate test.cpp new_odd_even.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
