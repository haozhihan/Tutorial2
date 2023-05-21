cmake_minimum_required(VERSION 3.10)

# 设置项目名称
project(blas_cmake)

# 添加可执行文件和源代码文件
add_executable(blas_cmake main.cpp matrix_operations.cpp)

# 链接blas
find_package(BLAS REQUIRED)
target_link_libraries(blas_cmake BLAS::BLAS)