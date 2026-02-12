#!/usr/bin/env bash

usage=$(cat << 'EOF'

========== CMake Template Generator ==========
----------- Written by Liam Laidlaw ----------

Usage for CMake Template Generator:

  $ cmake-template <project-name>


EOF
)

curr_dir=$(pwd)

mkdir -p "$(curr_dir)/src/include/"
mkdir -p "$(curr_dir)/bin/"
mkdir -p "$curr_dir/test/"
mkdir -p "$curr_dir/build/"

touch "$curr_dir/build"
