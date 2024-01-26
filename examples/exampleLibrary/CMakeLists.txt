cmake_minimum_required(VERSION 3.2)
project("example_library")

add_library(${PROJECT_NAME} SHARED
  exampleLib.cpp
)

set_target_properties(${PROJECT_NAME} PROPERTIES
  VERSION 1
  SOVERSION 0
  PUBLIC_HEADER exampleLib.hpp
)

include(GNUInstallDirs)

install(TARGETS ${PROJECT_NAME}
  LIBRARY DESTINATION /usr/lib
  PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

