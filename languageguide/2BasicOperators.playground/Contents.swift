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

//: ## Assignment Operator
/*:
The assignment operator (a = b) initializes or updates the values of a with the value of b
*/

let b = 10
var a = 5
a = b

//: ### Decomposition
let (x, y) = (1, 2)

/*:
The assignment operator in Swift does not return a value
*/

//: ## Arithmetic Operators
/*:
+, -, *, /
+ is supported for string concatenation
*/
"hello" + "world"

//: ### Remainder Operator
//: a = (b X some multiplier) + remainder
9 % 4
-9 % 4

//: a % b == a % -b

//: ### Floating-Point Remainder Calculations
/*:
Swift's remainder operator can operate on floating-point numbers.
*/
8 % 2.5


//: ### Increment and Decrement Operators
/*:
Swift provides an increment operator (++) and a decrement operator (--)
*/
var i = 0
++i

/*:
These operators modify the operand and return a value.
prefix: ++i, --i: prefix increment/decrement increments/decrements before returning the value
postifx: i++, i--: postfix incremnet/decrement increments/decrements and then return a value
*/

var a2 = 0
let b2 = ++a2
let c2 = a2++

//: recommended to always use ++i, --i unless postfix is required

//: ### Unary Minus Operator
/*:
The sign of a numeric value can be toggled using a prefixed -, known as unary minus operator
*/

let three = 3
let minusThree = -three
let plusThree = -minusThree

//: ### Unary Plus Operator
/*: 
The unary plus operator simply returns the value it operates on, without any change
*/
let minusSix = -6
let alsoMinusSix = +minusSix

//: use it to provide symmetry in your code for positive numbers when using the unary minus operator

//: ## Compound Assignment Operators
/*:
Swift provides compound assignment operators that combine assignment = with another operation
addition assignment operator +=

*/

var a3 = 1
a3 += 2

//: ## Comparison Operators
/*:
Swift supports all standard C comparison operators
* equal a == b
* not equal a != b
* greater than a > b
* less than a < b
* greater than or equal to a >= b
* less than or equal to a <= b
* two identity opertors: ===, !==

Each returns a Bool value
*/

let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}


//: ## Ternary Conditional Operator
/*:
The ternary conditional operator:
question ? answeriftrue : answeriffalse
*/

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

//: ## Nil Coalescing Operator
/*:
The nil coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default
value b if a is nil. a is always optional type.
*/

let defaultColorName = "red"
var userDefinedColorName = String?()   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName

//: ## Range Operators
/*:
Swift includes two range operators
Closed Range Operator (a...b) defines a range that runs from a to b, and includes the values a and b.

*/

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

/*:
Half-Open Range operator (a..<b) defines a range that runs from a to b, but does not include b. Useful
with zero-based arrays
*/

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

//: ## Logical Operators
/*:
Logical operators modify or combine the Boolean logic values true and false.
* Not (!a)
* AND (a && b)
* OR (a || b)
*/

//: ### NOT
/*:
Inverts a boolean value; a prefix operator
*/
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

//: ## Logical AND
/*:
The logical AND operator (a && b) creates logical expressions where both values must be true for the 
overall expression to be true
*/
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}

//: ## Logical OR
/*:
The logical OR operator (a || b) is an infix operator made from two adjacent pipe characters. Use to 
create logical expressions in which only one of the two has to be true for the overall expression to be
true
*/
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

//: ## Combining Logical Operators
/*:
You can combine multiple logical operators to create longer compound expressions
*/
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

/*:
&& and || are left-associative, menaing that the compound expressions with multiple logocal operators
evaluate the leftmost subexpression first.
*/


//: ### Explicit Parentheses
/*:
It is sometimes useful to include parentheses when they are not strictly needed to make the intention 
of a complex expression easier to read.
*/

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

