#!/bin/bash

# Initialize the save flag to false
save=false

# Parse command-line options
while getopts ":s" opt; do
    case ${opt} in
    s)
        save=true
        ;;
    \?)
        echo "Usage: hrun [-s] filename"
        exit 1
        ;;
    esac
done
shift $((OPTIND - 1))

# Get the filename from the first positional argument
filename=$1
if [ -z "$filename" ]; then
    echo "Please provide a filename."
    exit 1
fi

# Compile the Haskell file
ghc -o temp_executable "$filename"
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

# Run the compiled executable
./temp_executable
if [ $? -ne 0 ]; then
    echo "Execution failed."
    exit 1
fi

# Remove intermediate files if save flag is not set
if [ "$save" = false ]; then
    rm temp_executable
    rm "${filename%.*}.hi"
    rm "${filename%.*}.o"
fi
