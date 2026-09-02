#!/usr/bin/env bash

# Function to detect the available container engine
get_container_engine() {
    if command -v podman &> /dev/null; then
        echo "podman"
    elif command -v docker &> /dev/null; then
        echo "docker"
    else
        echo "Error: Neither podman nor docker was found in PATH." >&2
        exit 1
    fi
}

# Assign the detection result to a variable
ENGINE=$(get_container_engine)

echo "Selected container engine: $ENGINE"

# Execute the build using the detected engine
$ENGINE build -t amazoncorretto:21-alpine-jdk -f ./21/jdk/alpine/3.24-UPDATED/Dockerfile .
