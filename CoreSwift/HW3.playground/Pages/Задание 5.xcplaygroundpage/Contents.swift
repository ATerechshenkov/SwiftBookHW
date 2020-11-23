import Foundation

/*:
 ### Задание 5
 5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо сделать простой валидатор российского номера.
 Если длина номера больше 12, то вывести: сократите номер на N символов
 Если длина номера меньше 12, то вывести: дополните номер на N символов
 Если длина 12 и номер начинается с +7, то вывести: "Номер российский"
 
 (Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.
 
 
 5.2. Реализуйте ту же логику посредством if else
 
 */

// case
func checkNumberSwitch(phoneNumber: String) {
    let phoneLength = 12
    print("\n 5.1 Phone '\(phoneNumber)' length: \(phoneNumber.count)")

    switch phoneNumber.count {
    case (phoneLength+1)...:
        print("Сократите номер на \(phoneNumber.count - phoneLength) символов.")
    case ..<phoneLength:
        print("Дополните номер на \(phoneLength - phoneNumber.count) символов.")
    case phoneLength where phoneNumber.hasPrefix("+7"):
        print("Номер российский")
    default:
        print("Внимание! Номер не российский!")
    }
}

checkNumberSwitch(phoneNumber: "+12345678901234")
checkNumberSwitch(phoneNumber: "+123456")
checkNumberSwitch(phoneNumber: "+78901234567")
checkNumberSwitch(phoneNumber: "+18901234567")

// if
func checkNumberIf(phoneNumber: String) {
    let phoneLength = 12
    print("\n 5.2 Phone '\(phoneNumber)' length: \(phoneNumber.count)")

    if phoneNumber.count > phoneLength {
        print("Сократите номер на \(phoneNumber.count - phoneLength) символов.")
    } else if phoneNumber.count < phoneLength {
        print("Дополните номер на \(phoneLength - phoneNumber.count) символов.")
    } else if phoneNumber.hasPrefix("+7") {
        print("Номер российский")
    } else {
        print("Внимание! Номер не российский!")
    }
}

checkNumberIf(phoneNumber: "+12345678901234")
checkNumberIf(phoneNumber: "+123456")
checkNumberIf(phoneNumber: "+78901234567")
checkNumberIf(phoneNumber: "+18901234567")

//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)


