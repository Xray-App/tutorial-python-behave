#!/bin/bash

docker build . -t behave_tests

docker run --rm -v $(pwd)/results:/source/results -t behave_tests
