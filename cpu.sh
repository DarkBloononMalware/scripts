#!/bin/bash

CPU=$(top -n 1 -b | awk '/^%Cpu/{print $2}')%
echo "$CPU "
