/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
print("#1\n")

let heap:[Any] = [10, 299.99, "строка", false, "057", "true", true, "0.15", "0,17", "False", 0xA, UInt.max]
print(heap)
/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
print("\n#2\n")

heap.forEach { e in
    switch e {
    case is String:
        print("'\(e)' is String")
    case is Int:
        print("\(e) is Int")
    case is Double:
        print("\(e) is Double")
    case is Bool:
        print("\(e) is Bool")
    default:
        print("\(e) is unknown type")
    }
}
/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
print("\n#3\n")

let namedHeap:[String: Any] = ["First": 10, "Second": 299.99, "Third": "строка", "Foyrth": false, "Fifth": "057", "Sixth": "true",
                               "Seventh": true, "Eigth": "0.15", "Ninth": "0,17", "Tenth": "False", "Eleventh": 0xA, "Twelfth": UInt.max]

print(namedHeap, terminator: "\n\n")

namedHeap.forEach { key, value in
    print("\(key): \(value)")
}
/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
print("\n#4\n")

var total: Double = 0

namedHeap.forEach { key, value in
    switch value {
    case is String:
        total += 1
    case let someInt as Int:
        total += Double(someInt)
    case let someDouble as Double:
        total += someDouble
    case let someBool as Bool:
        total += someBool ? 2 : -3
    default:
        print("\(value) is unknown type")
    }
}

print("total = \(total)")

/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
print("\n#5\n")

total = 0

namedHeap.forEach { key, value in
    switch value {
    case let someString as String:
        if let castDouble = Double(someString) {
            print("Cast '\(someString)' to \(castDouble)")
            total += castDouble
        } else {
            print("Cast error of '\(someString)' to Double")
        }
    case let someInt as Int:
        total += Double(someInt)
    case let someDouble as Double:
        total += someDouble
    case is Bool:
        break
    default:
        print("\(value) is unknown type")
    }
}

print("total = \(total)")

//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)
