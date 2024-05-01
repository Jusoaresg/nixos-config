#!/bin/bash

dunstify "Volume" $(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }') -a 'volume' -r 1 -t 800
