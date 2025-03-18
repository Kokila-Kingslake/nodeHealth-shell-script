#!/bin/bash

############################################################################################################
#Author: Kokiller
#Date: 18-03-2025
#Description: This script outputs the node health
#Version: 1.0
############################################################################################################

set -x #Debug mode
set -e #Exit on error
set -o pipefail #Exit on pipe error

df -h
free -g
nproc

#Get process ids of the node
ps -ef | grep node | awk -F" " '{print $2}'