#!/bin/bash

if ! command -v docker version > /dev/null; then
    exit 1
fi

exit 0