# CMakeLists files in this project can
# refer to the root source directory of the project as ${HELLO_SOURCE_DIR} and
# to the root binary directory of the project as ${HELLO_BINARY_DIR}.
# These two lines are necessary, obviously set your project name.
# The name doesn't need to be all caps though.
cmake_minimum_required (VERSION 2.8.11)
project (HELLO)

# To create a library
add_library (Hello hello.cxx)

# Set include directories
target_include_directories (Hello PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Set a variable
set(MY_VARIABLE "Test Text")

# Create an executable
add_executable (helloDemo demo.cxx demo_b.cxx)

# Link your executable with a library
target_link_libraries (helloDemo LINK_PUBLIC Hello)

# Add a subdirectory (must have another CMakeLists.txt file)
add_subdirectory (MyOtherLibrary)