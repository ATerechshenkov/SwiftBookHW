import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSeNUvNsLIHjKJluYyK7DvCuHRCbp7N4kYR9vDMw0ILdWeF1HQ/viewform)

//: # Home Work 7


 
/*:
 ## Задание 1
 1.1 Создайте класс `Shape` (родительский класс) со следующими свойствами:
 
 - `height: Float`
 
 - `width: Float`
 
 - `radius: Float`
 
 - `square: Float`
 
 - `perimeter: Float`
 
 Oбъявите в классе методы `squareOfShape` и `perimeterOfShape` для расчетов площади и периметра (длины) фигуры соответственно. Методы должены возвращать `Float`. Создайте инициализатор для сторон прямоугольника и отдельный инициализатор для радиуса.
 */

/*:
 1.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Shape`. Переопределите методы `squareOfShape` и `perimeterOfShape` для каждого класса в соответствии с правилом расчета площади или периметра (длины) конкретной фигуры

 1.3 В каждом классе создайте метод `description`, который выводит на консоль сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равна <...>»
 */

//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape`, проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения и вызовите у каждого экземпляра класса метод `description`
print("\n#1\n")

// По логике такой класс никогда не должен создаваться. Как реализуются в Swift абстрактные классы?
class Shape {
    var height: Float?
    var width: Float?
    var radius: Float?
    var square: Float?
    var perimeter: Float?
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    
    init(radius: Float) {
        self.radius = radius
    }
    
    // Этот метод не должен иметь реализации, это тоже должен быть абстрактный метод
    func squareOfShape() -> Float? {
        nil
    }
    
    func perimeterOfShape() -> Float? {
        nil
    }
    
    func description() {
        print("\(String(describing: type(of: self))) description:")
        
        if let square = squareOfShape() {
            print(String(format: " - Square id %.2f", square))
        } else {
            print(" - Square is not defined")
        }
        
        if let perimeter = perimeterOfShape() {
            print(String(format: " - Perimeter id %.2f", perimeter))
        } else {
            print(" - Perimeter is not defined")
        }
    }
}

class Circle: Shape {
    override func squareOfShape() -> Float? {
        if let radius = self.radius {
            square = Float.pi * radius * radius
        } else {
            square = nil
        }
        return square
    }
    
    override func perimeterOfShape() -> Float? {
        if let radius = radius {
            perimeter = 2 * Float.pi * radius
        } else {
            perimeter = nil
        }
        return perimeter
    }
}

class Rectangle: Shape {
    override func squareOfShape() -> Float? {
        if let height = height, let width = width {
            square = height * width
        } else {
            square = nil
        }
        
        return square
    }
    
    override func perimeterOfShape() -> Float? {
        if let height = height, let width = width {
            perimeter = 2 * (height + width)
        } else {
            perimeter = nil
        }
        return perimeter
    }
}

class Ellipse: Shape {
    override func squareOfShape() -> Float? {
        if let height = height, let width = width {
            square = Float.pi * height * width
        } else {
            square = nil
        }
        
        return square
    }
    
    override func perimeterOfShape() -> Float? {
        if let height = height, let width = width {
            perimeter = Float.pi * (height + width)
        } else {
            perimeter = nil
        }
        return perimeter
    }
}

let circle = Circle(radius: 10)
let rectangle = Rectangle(height: 2, width: 3)
let ellipse = Ellipse(height: 2, width: 3)

circle.description()
rectangle.description()
ellipse.description()
/*:
## Задание 2

 2.1.
 
 Спроектировать проигрыватель(класс `AudioPlayer`), в него можно добавить одну или несколько композиций (метод `addCompositions(compositions: [AudioFile])`):
 - композиция (класс или структура `AudioFile`) имеет название, альбом, автора и длительность.
 
 Проигрыватель может:
 - перемешивать композиции(метод `shuffleCompositions()`)
 - выводить количество песен (свойство `numberOfCompositions`)
 - проигрывать следующую песню (метод `playNext()`), предыдущую (метод `playPrevious()`)
 - при проигрывании  песни выводить в консоль: "Играет композиция с именем <название>(<альбом>). Автор: <автор>",
 - если была  последняя композиция(песня), то при проигрывании следующей(`playNext()`) будет играться первая.
 - если песен нет, то при попытке проигрывания следующей песни или предыдущей выводить: "Композиции не найдены",
 
 2.2.
 
 К проигрывателю через USB может быть подключено одно из выходных устройств: Наушники(класс `Headphones`), Колонки(класс `Loudspeakers`).
 
 Колонки при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "На колонках проигрывается неизвестный звук длительностью <длительность>"
 
 Наушники при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "В наушниках проигрывается неизвестный звук длительностью <длительность>", где <длительность> - это длительность композиции.
 
 > Если интерфейс подключения один (USB), то может стоит подключать выходное устройство через протокол?
 
 2.3.
 Время послушать музыку! Для этого нужно последовательно выполнить действия:
 
 - Создать объект класса проигрыватель(`AudioPlayer`),
 - Добавить в него 3 любые песни `addCompositions`, пример песни: `AudioFile(title: "Anesthetize", album: "Fear of a Blank Planet", author: "Porcupine Tree", lengthSeconds: 1063)`
 - Проиграть 1 песню (и вспомнить, что выходное устройство не подключено :-))
 - Подключить к проигрывателю колонки `Loudspeakers`.
 - Перемешать песни (метод `shuffleCompositions()`)
 - Проиграть 5 песен через метод `playNext()`.
 - Вместо колонок подключить наушники `Headphones`
 - Проиграть 2 песни.

*/
print("\n#2")

protocol AudioDevice {
    func sound(soundLength: Int)
}

class Loudspeakers: AudioDevice {
    func sound(soundLength: Int) {
        print("На колонках проигрывается неизвестный звук длительностью \(soundLength) сек.")
    }
}

class Headphone: AudioDevice {
    func sound(soundLength: Int) {
        print("В наушниках проигрывается неизвестный звук длительностью \(soundLength) сек.")
    }
}

struct AudioFile {
    let name: String
    let album: String
    let author: String
    let lengthInSec: Int
}

class AudioPlayer {
    private var compositions = [AudioFile]()
    private var playingCompositionIndex = 0
    var audioDevice: AudioDevice? {
        didSet {
            play()
        }
    }
    
    func addCompositions(compositions: [AudioFile]) {
        self.compositions += compositions
    }
    
    func shuffleCompositions() {
        print("\nПеремешиваем песни")
        compositions.shuffle()
    }
    
    func numberOfCompositions() -> Int {
        compositions.count
    }
    
    func play() {
        guard !compositions.isEmpty else {
            print("Композиции не найдены")
            return
        }
        
        let comp = compositions[playingCompositionIndex]
        print("\nИграет композиция с именем \(comp.name)(\(comp.album). Автор: \(comp.author))")
        
        if let audioDevice = audioDevice {
            audioDevice.sound(soundLength: comp.lengthInSec)
        } else {
            print("Подключите аудио устройство")
        }
    }
    
    func playNext() {
        if playingCompositionIndex + 1 == compositions.count {
            playingCompositionIndex = 0
        } else {
            playingCompositionIndex += 1
        }
        play()
    }
    
    func playPrevious() {
        if playingCompositionIndex == 0 {
            playingCompositionIndex = compositions.count - 1
        } else {
            playingCompositionIndex -= 1
        }
        play()
    }
}


let playList = [
    AudioFile(name: "Песня 1", album: "Альбом 1", author: "Автор 1", lengthInSec: 5),
    AudioFile(name: "Песня 2", album: "Альбом 2", author: "Автор 2", lengthInSec: 10),
    AudioFile(name: "Песня 3", album: "Альбом 3", author: "Автор 3", lengthInSec: 15),
]

let loudspeakers = Loudspeakers()
let headphone = Headphone()
let audioPlayer = AudioPlayer()

// Добавляем плей лист
audioPlayer.addCompositions(compositions: playList)

// Запускаем плеер
audioPlayer.play()

// Подключаем колонки
audioPlayer.audioDevice = loudspeakers

// Перемешиваем песни
audioPlayer.shuffleCompositions()

// Проигрываем пеять песен вперед
audioPlayer.playNext()
audioPlayer.playNext()
audioPlayer.playNext()
audioPlayer.playNext()
audioPlayer.playNext()

// Подключаем наушники
audioPlayer.audioDevice = headphone

// Проигрываем две песни
audioPlayer.playNext()
audioPlayer.playNext()
