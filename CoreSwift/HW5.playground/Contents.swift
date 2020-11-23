import UIKit
//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSfbAnnd3DvDVyB4181e33ZfDP4A_yezovpuvo49fqZ6MPsUSw/viewform)
//: ## Home Work 5
/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Авангард - 2:1
 
 - Игра с Авангард - 2:3
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
print("#1\n")

let footballScores = [
    "Салават Юлаев": ["3:6", "5:5"],
    "Авангард": ["2:1", "2:3"],
    "АкБарс": ["3:3", "1:2"],
]

for (player, scores) in footballScores {
    for score in scores {
        print("Игра с \(player) - \(score)")
    }
}
/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 */
print("\n#2\n")

func sinceMyBirth(day: Int, month: Int, year: Int) {
    let nowDate = Date()
    var birthDC = DateComponents(year: year, month: month, day: day)
    birthDC.timeZone = TimeZone(abbreviation: "UTC")
    
    let calendar = Calendar.current // user calendar
    
    if let birthDate = calendar.date(from: birthDC) {
        let diffInYear = Calendar.current.dateComponents([.year], from: birthDate, to: nowDate)
        let diffInMonth = Calendar.current.dateComponents([.month], from: birthDate, to: nowDate)
        let diffInDays = Calendar.current.dateComponents([.day], from: birthDate, to: nowDate)

        print("Прожито \(diffInYear.year!) лет или \(diffInMonth.month!) месяцев или \(diffInDays.day!) дней.")
    }
}

sinceMyBirth(day: 20, month: 8, year: 1981)
/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */
print("\n#3\n")

func countBills(bills: [Int]) -> Int {
    guard !bills.isEmpty else {
        return 0
    }
    
    var result = 0
    for bill in bills {
        result += bill
    }
    return result
}
//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму
let valletBills = [50, 100, 500, 1000, 5000, 100, 50, 500]

let valletAmount = countBills(bills: valletBills)

print("В кошельке \(valletAmount) рублей.")
/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */
print("\n#4.1\n")

func isEven(_ number: Int) -> Bool {
    number % 2 == 0
}

for number in 1...10 {
    print("Number \(number) is even? \(isEven(number))")
}
/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/
print("\n#4.2\n")

func isDivisibleByThree(_ number: Int) -> Bool {
    number % 3 == 0
}

for number in 1...10 {
    print("Number \(number) is divisible by three? \(isDivisibleByThree(number))")
}
/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */
print("\n#4.3, 4.4\n")

// В жизни бы не создавал эту функцию, но как обертку для удобочитаемости применить можно
func getIncrementArray(inRange range: ClosedRange<Int>) -> [Int] {
    range.map({ $0 })
}

func getRandomArray(inRange range: ClosedRange<Int>) -> [Int] {
    var randomArray = [Int]()
    var incrementArray = getIncrementArray(inRange: range)
    
    while !incrementArray.isEmpty {
        let randomIndex = Int.random(in: 0..<incrementArray.count)
        randomArray.append(incrementArray.remove(at: randomIndex))
    }
    
    return randomArray
}
/*:
4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */
let incrementArray = getIncrementArray(inRange: 1...100)
print(incrementArray)

let randomArray = getRandomArray(inRange: 1...100)
print(randomArray)
/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */
print("\n#4.5\n")

func clearArray(_ clearedArray: [Int]) -> [Int] {
    return clearedArray.filter({ !isEven($0) && !isDivisibleByThree($0) })
}

let clearedIncrementArray = clearArray(incrementArray)
print(clearedIncrementArray)

var clearedRandomArray = clearArray(randomArray)
print(clearedRandomArray)
/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
 
 Например, для года 1900, функция возвратит 20. Для 1899 возвратит 19
 */
print("\n#4.6*\n")

// -2001...-2100 - 21 век до н.э.
// -1901...-2000 - 20 век до н.э.
// ...
// -101...200 - 2 век до н.э
// -1...-100 - 1 век до н.э.
// 0...99 - 1 век
// 100...199 - 2 век
// ...
// 1900...1999 - 20 век
// 2000...2099 - 21 век
// ...
enum Era: String {
    case before = "до н.э."
    case after = "н.э."
}

struct Century {
    var value: Int
    var era: Era
    
    init(byYear year: Int) {
        self.value = (year / 100) + 1
        self.era = year >= 0 ? Era.after : Era.before
        
        switch self.era {
        case .after:
            self.value = year / 100 + 1
        case .before:
            self.value = -Int(Double(year) / 100.00 - 0.99)
        }
    }
    
    func toString() -> String { // Есть ли специальный метод для переопределения?
        "\(value) век \(era.rawValue)"
    }
}


let checkedYears = [ -2001, -2000, -101, -100, -99, -1, 0, 99, 100, 1999, 2000]

for year in checkedYears {
    print("\(year) год это \(Century.init(byYear: year).toString())")
}
/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
 */
print("\n#5\n")

func getFibonachiRow(forLength length: Int) -> [Int]? {
    guard length > 1 else { return nil }
    
    var result = [0, 1]
    repeat {
        let last = result.count
        result.append(result[last-1] + result[last-2])
    } while (result.count <= length-1)
    
    return result
}

for len in 0...10 {
    if let fibonachiRow = getFibonachiRow(forLength: len) {
        print("Fibonachi Row for length \(len): \(fibonachiRow)")
    } else {
        print("Value error \(len). Mininum length 2!")
    }
}

print("\n#5 Рекурсия\n")

// Рекурсия
func getFibonachiRowRecursion(forLength length: Int) -> [Int]? {
    guard length > 1 else { return nil }
    
    if length == 2 { return [0, 1] }
        
    var result = getFibonachiRowRecursion(forLength: length-1)!
    let last = result.count
    result.append(result[last-1] + result[last-2])
    return result
}

for len in 0...10 {
    if let fibonachiRow = getFibonachiRowRecursion(forLength: len) {
        print("Fibonachi Row for length \(len): \(fibonachiRow)")
    } else {
        print("Value error \(len). Mininum length 2!")
    }
}
