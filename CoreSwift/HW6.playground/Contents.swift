import UIKit


//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLScqx-buXGfB6bpfXQyxpL7U5k6XtSFRwos2f8f-mKhqwiXY_w/viewform)

//: # Home Work 6

/*:
 ## Задание 1
 1.1 Создайте новый класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 На ваше усмотрение можете создать или не создавать инициализатор
 */
print("\n#1\n")

class Orange {
    var color: String
    var taste: String
    var radius: Double
    var volume: Double {
        4/3 * Double.pi  * pow(radius, 3)
    }
    
    init(color: String, taste: String, radius: Double) {
        self.color =  color
        self.taste = taste
        self.radius = radius
    }
    
    func calculateOrangeVolume() -> Double {
        self.volume
    }
    
    func toString() -> String {
        "Orange has \(color) color and \(taste) taste"
    }
}
//: 1.2 Создайте экземпляр класса `Orange` с именем `someOrange`
let someOrange = Orange(color: "Orange", taste: "Sweet", radius: 95)
/*:
 1.3 Проинициализируйте все переменные объекта someOrange следующими значениями:
 
 - `color` — *Orange*
 
 - `taste` — *Sweet*
 
 - `radius` — *95*
 */

//: 1.4 Выведите на консоль сообщение «Orange has <...> color and <...> taste». Обращайтесь к этим значениям напрямую через экземпляр класса, не создавая для них отдельных переменных
print(someOrange.toString())
//: 1.5 Создайте новую константу `orangeVolume` и присвойте ей значение объема апельсина (Число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить). Выведите значение `orangeVolume` на консоль

print(String(format: "Orange volume from Variable: %.2f", someOrange.volume))


/*:
 1.6 Дополните класс `Orange` новым свойством `orangeVolume`
 
 1.7 Создайте в классе `Orange` новый метод `calculateOrangeVolume` и перенесите в него расчет объема апельсина
 
 1.8 Вызовите метод calculateOrangeVolume
 */
print(String(format: "Orange volume from Method: %.2f", someOrange.calculateOrangeVolume()))

/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими элементами:
 - `name: String`
 - `porductionYear: Int`
 - `horsePower: Int`
 */
print("\n#2\n")

struct Car {
    var name: String
    var porductionYear: Int
    var horsePower: Int
    
    init(name: String, porductionYear: Int, horsePower: Int) {
        self.name = name
        self.porductionYear = porductionYear
        self.horsePower = horsePower
    }
}

//: 2.2 Создайте экземпляр структуры `Car` с названием какого либо автомобильного бренда, например `honda`.
let honda = Car(name: "Honda", porductionYear: 2018, horsePower: 230)

//: 2.3 Создайте копию экземпляра `honda`, например, `hondaCivic`
var hondaCivic = honda


//: 2.4 Присвойте новое значение переменной name структуры `hondaCivic`
hondaCivic.name = "Honda Civic"

//: 2.5 Создайте цикл с пятью итерациями, в котором в каждой итерации необходимо увеличивать значение horsePower у структуры hondaCivic на единицу
for _ in 1...5 {
    hondaCivic.horsePower += 1
}


//: 2.6 Выведите значения структур `honda` и `hondaCivic` на консоль в следующем виде: "Мощность двигателя <..> составляет <...> л.с."
print("Мощность двигателя \(honda.name) составляет \(honda.horsePower) л.с.")
print("Мощность двигателя \(hondaCivic.name) составляет \(hondaCivic.horsePower) л.с.")

/*:
 ## Задание 3
 3.1 Создайте структуру `PlayerInChess`, в которой есть два свойства: `name` с типом `Sting` и `wins` с типом `Int`
 
 3.2 Создайте экзмепляр струкутуры и инициализируйте её свойства
 
 3.3 Расширьте структуру PlayerInChess методом description, который должен выводить на консоль имя игрока и количество его побед

 3.4 Вызвите данный метод из экземпляра структуры
  */
print("\n#3\n")

struct PlayerInChess {
    var name: String
    var wins: Int
    
    init(name: String, wins: Int) {
        self.name = name
        self.wins = wins
    }
    
    func description() {
        print("\(name) has \(wins) wins.")
    }
    
    mutating func addWins(count: Int) {
        self.wins += count
    }
}

var player1 = PlayerInChess(name: "Player 1", wins: 100)
player1.description()

/*:
3.5 Расширте структуру методом addWins, который должен принимать целочисленное значение и увеличивать количество побед на это значение.

3.6 Вызовите метода addWins из экземпляра структуры, затем вызовите метод description
*/
player1.addWins(count: 10)
player1.description()

/*:
 ## Задание 4
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
print("\n#4\n")

class Employee {
    var name: String
    var surname: String
    var salary: Int
    
    init(name: String, surname: String, salary : Int) {
        self.name = name
        self.surname = surname
        self.salary = salary
    }
    
    func toString() -> String {
        "\(name) \(surname) has salary $\(salary)"
    }
}


//: 4.2 Создайте массив из 5 объектов под названием `names` со следующими элементами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` с элементами: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*
var names = ["John", "Aaron", "Tim", "Ted", "Steven"]
var surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]


//: 4.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
var employees = [Employee]()

for _ in 1...10 {
    let name = names[Int.random(in: 0..<names.count)]
    let surname = surnames[Int.random(in: 0..<surnames.count)]
    let salary = Int.random(in: 1000...2000)
    
    employees.append(Employee(name: name, surname: surname, salary: salary))
}

//: 4.4 Пройдитесь по массиву `employees` при помощи `for-in` и выведите информацию по каждому объекту в виде: «<имя> <фимилия>’s salary is $<... >»
for employee in employees {
    print(employee.toString())
}
//: 4.5 Создайте отдельный массив на основании `employees`, который включает только тех работников, зарплата которых чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4
let filteredEmployees = employees.filter{ $0.salary % 2 == 0 }

print("\nEmployees with even salary:")
for employee in filteredEmployees {
    print("  " + employee.toString())
}
