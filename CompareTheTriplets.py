#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the compareTriplets function below.
def compareTriplets(a, b):
    a_points = 0
    b_points = 0
    for i in range(len(a)):
        if a[i] == b[i]:
            a_points += 0
            b_points += 0
        elif a[i] > b[i]:
            a_points += 1
        else:
            b_points += 1

    return (a_points, b_points)


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    a = list(map(int, input().rstrip().split()))

    b = list(map(int, input().rstrip().split()))

    result = compareTriplets(a, b)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
