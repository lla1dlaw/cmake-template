#!/usr/bin/env bash

CMT_EXEC_HOME=$(pwd)
CMT_DATA_HOME=$XDG_DATA_HOME
CMT_CONFIG_HOME="$XDG_CONFIG_HOME/cmake-template"
PROJECT_NAME="$($0%.*)" # current file becomes project name

# get cmake variables
source "$(CMT_DATA_HOME)/set_vars.cfg"

if command -v cmake &> /dev/null
then
    CMAKE_VERSION=$(cmake --version | awk 'NR==1 {print $3}')
    echo "CMake version is: $CMAKE_VERSION"
else
    echo "Error: cmake is not installed or not found in PATH."
    exit 1
fi



mkdir -p "CMT_EXEC_HOME"
mkdir -p "CMT_DATA_HOME"
mkdir -p "CMT_CONFIG_HOME"

if [ -z "${!CMT_EXEC_HOME}" ]; then
    export "$CMT_EXEC_HOME"="$CMT_EXEC_HOME"
else

if [ -z "${!CMT_DATA_HOME}" ]; then
    export "$CMT_DATA_HOME"="$CMT_DATA_HOME"
else

if [ -z "${!CMT_CONFIG_HOME}" ]; then
    export "$CMT_CONFIG_HOME"="$CMT_CONFIG_HOME"
else

USAGE=$(cat << 'EOF'

  ========== CMake Template Generator ==========
  ----------- Written by Liam Laidlaw ----------

  Usage for CMake Template Generator:

    $ cmake-template

  Submit any issue here --> https://github.com/lla1dlaw/${PROJECT_NAME}/issues/new

EOF
)



CMAKE_FILE=$(cat << 'EOF'
cmake_minimum_required(VERSION $(CMAKE_VERSION))

project($(PROJECT_NAME) LANGUAGES CXX)
set() # need to finish this next TODO

EOF
)

curr_dir=$(pwd)

mkdir -p "$(curr_dir)/src/include/"
mkdir -p "$(curr_dir)/bin/"
mkdir -p "$(curr_dir)/test/"
mkdir -p "$(curr_dir)/build/"

touch "$(curr_dir)/build/"
echo "project($)" > "$(curr_cir)/CMakeLists.txt" 


