// Santiago Perez MOBDC04

// Lesson 05 Class Problems

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

func printOptional (whatever: String?) {
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

func fibonacciNth (n: Int) ->Int {
    
    var a: Int = 0
    var b: Int = 1
    var c: Int = 0
    
    if n == 1 {
        //Isolating the first number in Fibonacci makes my algorithm so much easier
        return 0
        
    }else if (n > 1) {
        
        //Loop that adds up the "last" two numbers in the series to get the desired nth number
        for _ in 2...n {
        c = a + b
        b = a
        a = c
        }
        return c
        
    }else {
        //Wrong User Input
        return 0
    }
}

fibonacciNth (1)
fibonacciNth (2)
fibonacciNth (3)
fibonacciNth (4)
fibonacciNth (5)
fibonacciNth (6)
fibonacciNth (7)
fibonacciNth (8)
fibonacciNth (9)
fibonacciNth (10)
fibonacciNth (11)
fibonacciNth (12)

    //Now let's print the results of the fibonacci function

func printFibonacciN (n: Int, c: Int) {
    
    print("The \(n)th Fibonacci number is \(c)")
    
}

printFibonacciN(9, c: fibonacciNth(9))


// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

func printFibonacciSumOfFirst20 () {
    
    var sum = 0
    
    for i in 1...20 {
        sum = sum + fibonacciNth(i)
    }
    
    print("The sum of the first 20 fibonacci numbers is \(sum)")
    
}

//Testing...

printFibonacciSumOfFirst20()


// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

func primeOrComposite (number: Int) -> String {
    
    //Turn the number into a positive integer if it wasn't before
    let number = abs(number)
    
    //"Neither"
    if (number == 1) {
        return "\(number) is neither prime nor composite"
    }
    
    //Special case: the number is equal to 2
    if (number == 2) {
        return "\(number) is prime"
    }
    
    //Test for Composite
    
    //Create a counter
    var i = 2
    
    var residual: Int?
    
    while (residual != 0) && (i < number) {
        
        residual = number % i
        i++
        
        if residual == 0 {
            return "\(number) is composite"
        }
        
    }
    //This line below will only run if all of the above tests dont pass
    
    return "\(number) is prime"

}

//Test the function

primeOrComposite(1)
primeOrComposite(2)
primeOrComposite(3)
primeOrComposite(4)
primeOrComposite(5)
primeOrComposite(6)
primeOrComposite(7)
primeOrComposite(8)
primeOrComposite(9)
primeOrComposite(10)
primeOrComposite(123)

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

func fibonacciOnSteroids () {
        
    for i in 1...20 {
        
        let n = fibonacciNth(i)
        printFibonacciN(i, c: n)
        primeOrComposite(n)
        
    }
        
}

//Test
fibonacciOnSteroids()

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

func tipCalculator (baseBillAmount: Float, tipPercentage: Float?) -> (totalBillAmount: Float, tipAmount: Float){

    var tipAmount: Float = 0
    
    //Calculate the tip amount if the tip amount is not nil
    if let tipPerc = tipPercentage {
        tipAmount = tipPerc * baseBillAmount
    }
    
    let totalBillAmount = tipAmount + baseBillAmount
    
    return (totalBillAmount, tipAmount)
    
}

tipCalculator(50.30, tipPercentage: 0.2)


// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

    /*

func reverseString (whatever: String) -> String {
    
    var whatever = whatever
    
    var stringArray: [Character]
    
    //Loop trough each character in the string
    
    for character in whatever {
        
        //Populate the array with each character
        stringArray.append(character)
    }

}
    
    */
    


// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.




