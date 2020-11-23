import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */

/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.

 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */

// 6.1
enum CalculationType {
    case addition, subtract, multiplication, division
}

let number1 = 12
let number2 = 3
let calculationType: CalculationType = .subtract

switch calculationType {
case .addition:
    print("Результат сложения \(number1) и \(number2) равен \(number1 + number2)")
case .subtract:
    print("Результат вычитания \(number1) и \(number2) равен \(number1 - number2)")
case .multiplication:
    print("Результат умножения \(number1) и \(number2) равен \(number1 * number2)")
case .division:
    print("Результат деления \(number1) и \(number2) равен \(number1 / number2)")
}

// 6.3
enum DollarCountries {
    case USA, Canada, Australia
}

enum CurrencyUnit {
    case rouble
    case dollar(country: DollarCountries)
    case euro
}

let currencyUnit: CurrencyUnit = .dollar(country:  .USA)

//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |

