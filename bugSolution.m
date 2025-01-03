To reliably check for numerical equality between `NSDecimalNumber` objects, avoid direct use of `compare:`.  Instead, calculate the difference between the two numbers and compare the absolute value of the difference to a small epsilon value, accounting for potential rounding errors.  This approach ensures numerical equality rather than strict bit-by-bit comparison.

```objectivec
- (BOOL)areNumbersNumericallyEqual:(NSDecimalNumber *)num1 and:(NSDecimalNumber *)num2 {
    NSDecimalNumber *difference = [num1 decimalNumberBySubtracting:num2];
    NSDecimalNumber *epsilon = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-10 isNegative:NO]; // Adjust epsilon as needed
    NSComparisonResult result = [difference compare:epsilon];
    return (result == NSOrderedAscending || result == NSOrderedSame) && ([difference compare:[epsilon decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithMantissa:-1 exponent:0 isNegative:NO]]] == NSOrderedAscending || [difference compare:[epsilon decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithMantissa:-1 exponent:0 isNegative:NO]]] == NSOrderedSame);
}
```

This revised comparison method provides a more robust way to handle potential precision differences and ensure correct numerical equality checks between `NSDecimalNumber` objects.