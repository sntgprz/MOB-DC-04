// Intro to Swift in class playground
// By Tedi at GA

import Foundation

//1 TODO: Create two variables, name and age. Name is a string, age is an integer.

//2 TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"


//3 TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

//4 TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

//5 TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

//6 TODO: Create a constant called number

//7 TODO: Print whether the above number is even

//8 TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

//9 TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

//10 Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

//11 BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below


//1
var name: String = "Billy"
var age: Int = 107

//2
print("Hello, \(name) . Your age is \(age) years old!")

//3 Drink, Vote, and Drive
if (age >= 21) {
    print("You can drink")
}else if (age >= 18) {
    print("You can vote")
}else if (age >= 16) {
    print("You can drive")
}


//4 Drink, Vote and Drive; combined

if (age >= 16) && (age < 18) {
    print("You can drive")
}else if (age  >= 18) && (age < 21) {
    print("You can drive and vote")
}else if (age >= 21) {
    print("You can drive, vote, and drink, but not at the same time!")
}

//5 First fifty multiples of seven minus one

var multipleOf7Minus1: Int = 6

for i in 1...50 {
    print(multipleOf7Minus1);
    multipleOf7Minus1 = multipleOf7Minus1 + 7;
}

//6 Create a Constant
let number = 0

//7 


















//Placeholder
