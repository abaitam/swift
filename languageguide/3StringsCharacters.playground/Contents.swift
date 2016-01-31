import UIKit

//: # 3 Strings and Characters
/*:
A string is a series of characters. Swift strings are represented by the String type. The contents of a String can be accessed in various ways, including as a collection of Character values.
Every string is composed of encoding-independent Unicode characters, and provides support for accessing those characters in various Unicode representations.

* Swift’s String type is bridged with Foundation’s NSString class.
* You can also use a String value with any API that requires an NSString instance.
*/


//: ## Strings Literals
/*:
A string literal is a fixed sequence of textual characters surrounded by a pair of double quotes ("").
*/

let someString = "Some string literal value"

//: ## Initializing an empty string
/*:
To create an empty String value either assign an empty string literal to a variable, or initialize a new String instance with initializer syntax
*/
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other

//: Find out whether a String value is empty using isEmpty property
if emptyString.isEmpty {
    print("Nothing to see here")
}

//: ## String Mutability
/*:
You indicate whether a particular String can be modified (or mutated) by assigning it to a variable or to a constant
*/

var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"

let constantString = "Highlander"
// [ERROR] constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified


//: ## Strings are Value Types
/*:
Swift’s String type is a value type. If you create a new String value, that String value is copied when it is passed to a function or method, or when it is assigned to a constant or variable (copy-by-default String behavior).
*/


//: ## Concatentating Strings and Characters
/*:
You can access the individual Character values for a String by iterating over its characters property with a for-in loop:
*/

for character in "Dog!🐶".characters {
    print(character)
}

/*:
you can create a stand-alone Character constant or variable from a single-character string literal by providing a Character type annotation
*/
let exclamationMark: Character = "!"

/*: 
String values can be constructed by passing an array of Character values as an argument to its initializer
*/
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// prints "Cat!🐱"

//: ## Concatenating Strings and Characters
/*:
String values can be added together (or concatenated) with the addition operator (+) to create a new String value
*/
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"

/*:
You can also append a String value to an existing String variable with the addition assignment operator (+=)
*/
var instruction = "look over"
instruction += string2
// instruction now equals "look over there"

/*:
You can append a Character value to a String variable with the String type’s append() method:
*/
let exclamationMark2: Character = "!"
welcome.append(exclamationMark2)
// welcome now equals "hello there!"

//: ## String Interpolation
/*:
String interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal. Each item that you insert into the string literal is wrapped in a pair of parentheses, prefixed by a backslash.

The expressions you write inside parentheses within an interpolated string cannot contain an unescaped backslash (\), a carriage return, or a line feed. However, they can contain other string literals.
*/
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"

//: ## Unicode
/*:
Swift’s String and Character types are fully Unicode-compliant
*/

//: ### Unicode Scalars
/*:
Behind the scenes, Swift’s native String type is built from Unicode scalar values. A Unicode scalar is a unique 21-bit number for a character or modifier, A Unicode scalar is any Unicode code point in the range U+0000 to U+D7FF inclusive or U+E000 to U+10FFFF inclusive. Unicode scalars do not include the Unicode surrogate pair code points, which are the code points in the range U+D800 to U+DFFF inclusive. Scalars that have been assigned to a character typically also have a name,
*/



//: ### Special Characters in String Literals
/*:
String literals can include the following special characters
*/
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496


//: ### Extended Grapheme Clusters
/*:
Every instance of Swift’s Character type represents a single extended grapheme cluster. An extended grapheme cluster is a sequence of one or more Unicode scalars that (when combined) produce a single human-readable character.
*/
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by ́
// eAcute is é, combinedEAcute is é

//: ## Counting Characters
/*:
To retrieve a count of the Character values in a string, use the count property of the string’s characters property
*/
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")
// prints "unusualMenagerie has 40 characters"

/*:
Swift’s use of extended grapheme clusters for Character values means that string concatenation and modification may not always affect a string’s character count.
*/
var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")
// prints "the number of characters in cafe is 4"

word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.characters.count)")
// prints "the number of characters in café is 4"

//: ### Accessing and Modifying a String
/*:
You access and modify a string through its methods and properties, or by using subscript syntax.
*/
//: #### String Indices
/*:
Each String value has an associated index type, String.Index, which corresponds to the position of each Character in the string.

* Swift strings cannot be indexed by integer values
* Use the startIndex property to access the position of the first Character of a String. The endIndex property is the position after the last character in a String. 
* If a String is empty, startIndex and endIndex are equal.
* A String.Index value can access its immediately preceding index by calling the predecessor() method, and its immediately succeeding index by calling the successor() method. Any index in a String can be accessed from any other index by chaining these methods together, or by using the advancedBy(_:) method. Attempting to access an index outside of a string’s range will trigger a runtime error.
* Attempting to access a Character at an index outside of a string’s range will trigger a runtime error.
* Use the indices property of the characters property to create a Range of all of the indexes used to access individual characters in a string.
*/

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.endIndex.predecessor()]
// !
greeting[greeting.startIndex.successor()]
// u
let index = greeting.startIndex.advancedBy(7)
greeting[index]
// a


for index in greeting.characters.indices {
    print("\(greeting[index]) ", terminator: "")
}
// prints "G u t e n   T a g !"


//: ### Inserting and Removing
/*:
* To insert a character into a string at a specified index, use the insert(_:atIndex:) method.
*
*/
var welcome2 = "hello"
welcome2.insert("!", atIndex: welcome2.endIndex)
/*:
* To insert the contents of another string at a specified index, use the insertContentsOf(_:at:) method.
*/
welcome.insertContentsOf(" there".characters, at: welcome.endIndex.predecessor())

/*:
* To remove a character from a string at a specified index, use the removeAtIndex(_:) method.
*/
welcome2.removeAtIndex(welcome2.endIndex.predecessor())

/*:
* To remove a substring at a specified range, use the removeRange(_:) method:
*/
let range = welcome.endIndex.advancedBy(-6)..<welcome.endIndex
welcome.removeRange(range)


//: ## Comparing Strings
/*:
* Two String values (or two Character values) are considered equal if their extended grapheme clusters are canonically equivalent. Extended grapheme clusters are canonically equivalent if they have the same linguistic meaning and appearance, even if they are composed from different Unicode scalars behind the scenes.
* Swift provides three ways to compare textual values: string and character equality, prefix equality, and suffix equality.
* String and character comparisons in Swift are not locale-sensitive.


*/


//: ### String and Character Equality
/*:
String and character equality is checked with the “equal to” operator (==) and the “not equal to” operator (!=)
*/
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

//: ### Prefix and Suffix Equality
/*:
To check whether a string has a particular string prefix or suffix, call the string’s hasPrefix(_:) and hasSuffix(_:) methods, both of which take a single argument of type String and return a Boolean value.
*/


//: ## Unicode Representation of Strings
/*:
When a Unicode string is written to a text file or some other storage, the Unicode scalars in that string are encoded in one of several Unicode-defined encoding forms. Each form encodes the string in small chunks known as code units. These include the UTF-8 encoding form (which encodes a string as 8-bit code units), the UTF-16 encoding form (which encodes a string as 16-bit code units), and the UTF-32 encoding form (which encodes a string as 32-bit code units).

* Swift provides several different ways to access Unicode representations of strings. You can iterate over the string with a for-in statement, to access its individual Character values as Unicode extended grapheme clusters.
* Alternatively, access a String value in one of three other Unicode-compliant representations:

*/
let dogString = "Dog‼🐶"


//: ### UTF-8 Representation
/*:
You can access a UTF-8 representation of a String by iterating over its utf8 property. This property is of type String.UTF8View, which is a collection of unsigned 8-bit (UInt8) values, one for each byte in the string’s UTF-8 representation:
*/

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

//: ### UTF-16 Representation
/*:
You can access a UTF-16 representation of a String by iterating over its utf16 property. This property is of type String.UTF16View, which is a collection of unsigned 16-bit (UInt16) values, one for each 16-bit code unit in the string’s UTF-16 representation:
*/
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")

//: ### Unicode Scalar Representation
/*:
You can access a Unicode scalar representation of a String value by iterating over its unicodeScalars property. This property is of type UnicodeScalarView, which is a collection of values of type UnicodeScalar.

Each UnicodeScalar has a value property that returns the scalar’s 21-bit value, represented within a UInt32 value:

*/
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")