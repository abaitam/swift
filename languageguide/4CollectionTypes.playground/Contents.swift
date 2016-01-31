import UIKit
//: # 4 Collection Types
/*:
Swift provides three primary collection types, known as arrays, sets, and dictionaries, for storing collections of values.
* Arrays, sets, and dictionaries in Swift are always clear about the types of values and keys that they can store. 
* Swift’s array, set, and dictionary types are implemented as generic collections.
*/

//: ## Mutability of Collections
/*:
If you create an array, a set, or a dictionary, and assign it to a variable, the collection that is created will be mutable. This means that you can change (or mutate) the collection after it is created by adding, removing, or changing items in the collection. If you assign an array, a set, or a dictionary to a constant, that collection is immutable, and its size and contents cannot be changed
*/

//: ## Arrays
/*:
An array stores values of the same type in an ordered list. Swift’s Array type is bridged to Foundation’s NSArray class.
*/

//: ### Array Type Shorthand Syntax
/*:
The type of a Swift array is written in full as Array<Element>, where Element is the type of values the array is allowed to store. You can also write the type of an array in shorthand form as [Element]
*/

//: ### Creating an Empty Array
/*:
You can create an empty array of a certain type using initializer syntax:
*/
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

/*:
Alternatively, if the context already provides type information, such as a function argument or an already typed variable or constant, you can create an empty array with an empty array literal, which is written as []
*/

//: ### Creating an Array with a Default Value
/*:
Swift’s Array type also provides an initializer for creating an array of a certain size with all of its values set to the same default value. You pass this initializer the number of items to be added to the new array (called count) and a default value of the appropriate type (called repeatedValue)
*/
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

//: ### Creating an Array by Adding Two Arrays Together
/*:
You can create a new array by adding together two existing arrays with compatible types with the addition operator (+). The new array’s type is inferred from the type of the two arrays you add together:
*/
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles

//: ### Creating an Array with an Array Literal
/*:
You can also initialize an array with an array literal, which is a shorthand way to write one or more values as an array collection. An array literal is written as a list of values, separated by commas, surrounded by a pair of square brackets
*/
var shoppingList: [String] = ["Eggs", "Milk"]

//: ### Accessing and Modifying an Array
/*:
* You access and modify an array through its methods and properties, or by using subscript syntax.
*/


//: To find out the number of items in an array, check its read-only count property
print("The shopping list contains \(shoppingList.count) items.")
//: Use the Boolean isEmpty property as a shortcut for checking whether the count property is equal to 0:
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
//:You can add a new item to the end of an array by calling the array’s append(_:) method:
shoppingList.append("Flour")

//:Alternatively, append an array of one or more compatible items with the addition assignment operator (+=):
shoppingList += ["Baking Powder"]

//: Retrieve a value from the array by using subscript syntax, passing the index of the value you want to retrieve within square brackets immediately after the name of the array
var firstItem = shoppingList[0]
//: You can use subscript syntax to change an existing value at a given index:
shoppingList[0] = "Six eggs"
//: You can also use subscript syntax to change a range of values at once, even if the replacement set of values has a different length than the range you are replacing.
shoppingList[4...6] = ["Bananas", "Apples"]
//: To insert an item into the array at a specified index, call the array’s insert(_:atIndex:) method:
shoppingList.insert("Maple Syrup", atIndex: 0)
//:  you remove an item from the array with the removeAtIndex(_:) method. This method removes the item at the specified index and returns the removed item. Any gaps in an array are closed when an item is removed,
let mapleSyrup = shoppingList.removeAtIndex(0)

//: If you want to remove the final item from an array, use the removeLast() method
let apples = shoppingList.removeLast()


//: ### Iterating Over an Array
/*:
You can iterate over the entire set of values in an array with the for-in loop:
*/
for item in shoppingList {
    print(item)
}
//: use the enumerate() method to iterate over the array instead. For each item in the array, the enumerate() method returns a tuple composed of the index and the value for that item.
for (index, value) in shoppingList.enumerate() {
    print("Item \(index + 1): \(value)")
}


//: ## Sets
/*:

*/

//: ### Hash Values for Set Types
/*:

*/

//: ### Set Type Synatx
/*:

*/

//: ### Creating and Initializing an Empty Set
/*:

*/

//: ### Creating a Set with an Array Literal
/*:

*/

//: ### Accessing and Modifying a Set
/*:

*/

//: ### Iterating Over a Set
/*:

*/

//: ## Performing Set Operations
/*:

*/

//: ### Fundamental Set Operations
/*:

*/

//: ### Set Membership and Equality
/*:

*/

//: ## Dictionaries
/*:

*/

//: ### Dictionary Type Shorthand Syntax
/*:

*/

//: ### Creating an Empty Dictionary
/*:

*/

//: ### Creating a Dictionary with a Dictionary Literal
/*:

*/

//: ### Accessing and Modifying a Dictionary
/*:

*/

//: ### Iterating Over a Dictionary
/*:

*/

