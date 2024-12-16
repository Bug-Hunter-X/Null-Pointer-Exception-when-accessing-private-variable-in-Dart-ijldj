# Null Pointer Exception in Dart
This example demonstrates a potential Null Pointer Exception that can occur when using private variables with getters in Dart. The issue arises when the private variable is null, and the getter doesn't handle this scenario appropriately.

## The Problem
The `MyClass` class uses a private variable `_myVariable`. The getter `myVariable` doesn't explicitly handle the case where `_myVariable` is null, leading to a potential `NullPointerException` if accessed before initialization.

## The Solution
The solution involves using the null-aware operator (`??`) to provide a default value (0 in this case) if `_myVariable` is null. This ensures that the getter always returns a valid value, preventing the exception.

## How to reproduce the bug
1.  Run the `bug.dart` file in a Dart environment
2. Observe the exception when the code attempts to access the `_myVariable` before assigning a value to it.

## How to solve the bug
1.  Review the `bugSolution.dart` file for a solution that utilizes the null-aware operator to handle the potential null value of the private variable.
2. Run the `bugSolution.dart` file to confirm the exception is handled properly.