# Objective-C NSDecimalNumber Comparison Precision Bug

This repository demonstrates a subtle bug related to comparing `NSDecimalNumber` objects in Objective-C.  The issue stems from the precise nature of the `compare:` method, which might lead to unequal results for numerically identical numbers with different precision.

The `bug.m` file contains code exhibiting the issue.  The solution, found in `bugSolution.m`, provides a more robust approach to comparing `NSDecimalNumber` for numerical equality, rather than strict bitwise equality.

## Setup

This project can be opened using Xcode.

## Usage

Run the code in `bug.m` and observe the unexpected comparison result.  Then, run the code in `bugSolution.m` to see how to resolve this.