import Foundation

/*:
 ### Задание 3
 
 3.1 Определите квартал в котором вы родились, используя switch.
 */

let monthOfBirth = 6
var quarterOfBirth: Int?

switch monthOfBirth {
case 1...3:
    quarterOfBirth = 1
case 4...6:
    quarterOfBirth = 2
case 7...9:
    quarterOfBirth = 3
case 10...12:
    quarterOfBirth = 4
default:
    print("Error!")
}

if let quarter = quarterOfBirth {
    print("Your quarter of birth is \(quarter)")
}

//: [Ранее: Задание 2](@previous)  |  задание 3 из 6  |  [Далее: Задание 4](@next)
