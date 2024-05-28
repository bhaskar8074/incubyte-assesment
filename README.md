# String Calculator TDD Kata

## Overview

This is a TDD (Test-Driven Development) exercise to create a simple String calculator with the following requirements:

1. An empty string should return 0.
2. A single number should return the value of that number.
3. Two numbers separated by a comma should return their sum.
4. The calculator should handle any amount of numbers.
5. The calculator should handle new lines as delimiters (e.g., "1\n2,3" should return 6).
6. The calculator should support custom delimiters specified at the beginning of the string (e.g., "//;\n1;2" where the delimiter is ";" should return 3).
7. The calculator should throw an exception if a negative number is provided (e.g., "negative numbers not allowed -1").
8. Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2.
9. Delimiters can be of any length with the following format: "//[delimiter]\n" for example: "//[***]\n1***2***3" should return 6.

## Examples

- Input: "", Output: 0
- Input: "1", Output: 1
- Input: "1,5", Output: 6
- Input: "1\n2,3", Output: 6
- Input: "//;\n1;2", Output: 3
- Input: "-1,2", Output: "negative numbers not allowed -1"
- Input: "2,1001", Output: 2
- Input: "//[***]\n1***2***3", Output: 6
