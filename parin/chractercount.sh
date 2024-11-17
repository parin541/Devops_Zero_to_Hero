#!/bin/bash




########
# Program = Display the total number of "S" from the word.
#
# Date = 12-26-2023
########

x=mississippi

grep -o "s" <<<"$x" | wc -l
