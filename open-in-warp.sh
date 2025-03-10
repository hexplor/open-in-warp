#!/bin/bash
# Get the selected folder or use current directory
DIR="$(realpath "$1" 2>/dev/null || echo $PWD)"
warp-terminal --directory "$DIR"
