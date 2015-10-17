// Playground - noun: a place where people can play
// Lesson 05

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times

func printHelloWorld10 () {
    for _ in 1...10 {
        print("Hello world!")
    }
}

// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func printDesiredTimes() {
    for i in 1...20 {
        print("Hit this line \(i)")
    }
}

//test
printDesiredTimes()

// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func helloWhatever (whatever: String) {
    print("Hello \(whatever) !")
}

// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func printOptional (whatever: String?){
    if let goodWhatever = whatever {
        print("Hello \(goodWhatever)")
    }else {
        print("Hello, world")
    }
}

//test

printOptional("Bob")

printOptional(nil)


// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci

func fibonacciNth (nth: Int) ->Int {
    
    var a: Int = 0
    var b: Int = 1
    var c: Int = 0
    
    if nth == 1 {
        return 0
    }else if nth == 2 {
        return 1
    }else {
        for _ in 3...nth {
        c = a + b
        b = a
        a = c
        }
        return c
    }
}

fibonacciNth (4)


// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

func PrimeOrComposite (number: Int) -> String{
    
    var residual: Int = 1;
    
   //Test if composite
    for i in 1..<number {
        
        residual = number % i;
        
        if (residual == 0) {
            let numberType: String = "Composite"
            
            return numberType
        }else {
            
            let numberType: String = "Prime"
            
            return numberType
        }
    
    }


// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

    /*
func tipCalculator (billAmount: Double, tipPercentage: Double) -> (billAmount: Double, tipAmount: Double) {
    
    var tipAmount: Double = billAmount * tipPercentage
    
    if tipPercentage != 0 {
        return (billAmount, tipAmount)
    }else {
        return (billAmount, 0)
    }
    
}
*/


// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.




