project(cmake-common)
cmake_minimum_required(VERSION 3.16)


list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}" PARENT_SCOPE)
include(ccache)
include(compiler_flags)
include(compiler_warnings)
include(add_gtest)
