import UIKit

func sum(num1 :Int, num2: Int) ->  Int {
    return (num1 + num2)
}

sum(num1: 4, num2: 5)





// Sum -> (Int, Int) -> Int // we define our function structure

func calculate(num1 : Int, num2: Int, myFunction : (Int, Int) -> Int) -> Int { // we add our sum func. structure to this func as a parameter
    return myFunction(num1, num2)
}

calculate(num1: 4, num2: 5, myFunction: sum(num1:num2:)) // you dont have to write sum's func's nums

calculate(num1: 4, num2: 5, myFunction: sum) // you should use like this
// we can easily use this ca;culate func for creating calculator.

// CLOSURES = ONE TIME USED FUNCTIONS OR ANONYMOUS FUNC OR NONAME FUNCTIONS.


/*
func multiply(num1 : Int, num2 : Int) -> Int { // WE WILL CHANGE MULTIPLE FUNC AS A CLOSURE
    return num1 * num2
}
multiply(num1: 4, num2: 6)
*/


/*
 { (num1 : Int, num2 : Int) -> Int in
 return num1 * num2
 }
 */
 

// if we use multiply func for using only one time or dont want to define. for this we can use it like this
// if we use multiply func. for more than one time we can use it simple way.
calculate(num1: 4, num2: 9, myFunction:  { (num1 : Int, num2 : Int) -> Int in // it is working.
    return num1 * num2
})

calculate(num1: 4, num2: 9, myFunction:  { (num1, num2) -> Int in // it is working. // we erase num1,num2 type
    return num1 * num2
})

calculate(num1: 4, num2: 9, myFunction:  { (x1, x2) -> Int in // it is working.
    return x1 * x2 // we have to define x1, x2 and with return x1, x2
})

calculate(num1: 4, num2: 9, myFunction:  { (x1, x2) in // it is working. // we erase return type
    return x1 * x2 // we have to define x1, x2 and with return x1, x2
})

calculate(num1: 4, num2: 9, myFunction:  { (x1, x2) in x1 * x2 }) // it is working. // we erase return type
// we have to define x1, x2 and with return x1, x2 // we erase "return"

calculate(num1: 4, num2: 9, myFunction:  {$0 * $1}) // it is working // we define x1 and x2 to $0 and $1 -> it is refer to num1, num2

let myArray = [10, 20 ,30 ,40 ,50]

func test(num1: Int) -> Int {
    return num1 / 5
}

myArray.map(test) // we can define func in map func // we can use it in arrays

myArray.map({$0 / 5}) // we can use it  with closures(noname func)


print(myArray.map({$0 / 5})) // to see we can use print func.
