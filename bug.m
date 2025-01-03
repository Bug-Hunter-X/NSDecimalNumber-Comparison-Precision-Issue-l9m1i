In Objective-C, a subtle error can arise when dealing with `NSDecimalNumber` and its comparison methods.  Specifically, using `compare:` to check for equality might yield unexpected results due to the way `NSDecimalNumber` handles precision.  Two `NSDecimalNumber` objects that are numerically equal but have different internal representations (due to differing precision levels) might not compare as equal using `compare:`. This is because `compare:` performs a precise, bit-by-bit comparison, not a numerical comparison. 

For example:

```objectivec
NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:@