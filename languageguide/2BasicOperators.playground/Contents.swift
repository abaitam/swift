//: Playground - noun: a place where people can play

import UIKit

//: # Basic Operators

/*:

* An operator is a special symbol or phrase that you use to check, change, or combine values.
* +, -, *, /, %, &&, detect and disallow value overflow (use Overflow operators)
* % can be performed on floating-point numbers.
* Two range operators: a..<b a...b
* The assignment operator (=) does not return a value, to prevent it from being mistakenly used when the equal to operator (==) is intended.

*/


//: # Terminology
/*:
- Operators are unary, binary and ternary:
* Unary - operate on a single target prefix (!b) or postfix (i++)
* Binary - operate on two targets. infix
* ternary - operate on three targets. One ternary operator: a ? b : c

The values that operators affect are operands.
*/

//: # Assignment Operator
/*:
The assignment operator (a = b) initializes or updates the values of a with the value of b
*/

let b = 10
var a = 5
a = b

//: ## Decomposition
let (x, y) = (1, 2)

//: The assignment operator in Swift does not return a value

//: ## Arithmetic Operators
/*:
+, -, *, /
+ is supported for string concatenation
*/
"hello" + "world"

//: ## Remainder Operator
//: a = (b X some multiplier) + remainder
9 % 4
-9 % 4

//: a % b == a % -b

//: ## Floating-Point Remainder Calculations

