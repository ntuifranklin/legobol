#!/bin/bash

program_name=$1
touch "$program_name.cob" && cobc -x -free "$program_name.cob" -o "$program_name"
