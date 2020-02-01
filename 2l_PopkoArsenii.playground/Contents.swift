import UIKit


//1

var a = 18
var b = 17
func evenNumbers (num: Int) -> Bool {
    return num % 2 == 0
}

evenNumbers(num: a)
evenNumbers(num: b)


//2

var c = 9
var d = 5
func evenNumbers3 (num: Int) -> Bool {
    return num % 3 == 0
}

evenNumbers3(num: c)
evenNumbers3(num: d)


//3

//var numbersArray = Array (1...100)
var numbersArray: [Int] = Array<Int>(1...100)
for i in 0..<100 {
    numbersArray.append(i)
}
print (numbersArray)


//4


for i in numbersArray {
    if (evenNumbers(num: i) || evenNumbers3(num: i)) {
        numbersArray.remove(at: numbersArray.firstIndex(of: i)!)
    }
}
print (numbersArray)
