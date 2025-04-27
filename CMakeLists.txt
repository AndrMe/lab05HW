
cmake_minimum_required(VERSION 3.10)

project(all)

add_subdirectory(banking)

option(BUILD_TESTS "Build tests" OFF)

if(NOT DEFINED TESTS_NAME)
  set(TESTS_NAME check)
endif()

if(BUILD_TESTS)
  enable_testing()
  add_subdirectory(third-party/gtest)
  file(GLOB ${PROJECT_NAME}_TEST_SOURCES tests/*.cpp)
  add_executable(${TESTS_NAME} ${${PROJECT_NAME}_TEST_SOURCES})
  target_link_libraries(${TESTS_NAME} banking gtest_main gmock_main)
  add_test(NAME ${TESTS_NAME} COMMAND ${TESTS_NAME})
endif()
