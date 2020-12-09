import Foundation

class Workout {             // тренировка
    let time: Double        // время
    let distance: Double    // дистанция
    
    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
}

class Run: Workout {    // бег
    let cadence: Double // темп
    
    init(cadence: Double, time: Double, distance: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

class Swim: Workout {   // плавание
    let stroke: String  // стиль
    
    init(stroke: String, time: Double, distance: Double) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}

var workouts: [Workout] = [
    Run(cadence: 80, time: 1200, distance: 4000),
    Swim(stroke: "вольный стиль", time: 32.1, distance: 50),
    Swim(stroke: "баттерфляй", time: 36.8, distance: 50),
    Swim(stroke: "вольный стиль", time: 523.6, distance: 500),
    Run(cadence: 90, time: 358.9, distance: 1600)
]
/*:
 
 Напишите функции `describeRun(runningWorkout:)` и `describeSwim(swimmingWorkout:)`, принимающие объекты типа`Run` и `Swim` соответственно.  Ни одна не должна возвращать значений.  Каждая функция должна вывести описание тренировки, включая темп бега, либо стиль плавания.  Время представлено в секундах, расстояние — в метрах, темп — в шагах в минуту.
 */
func describeRun(runningWorkout run: Run) {
    print(String(format: "Running workout: cadence: %.2f spm., distance: %.2f m., time: %.2f min.", run.cadence, run.distance, run.time))
}

func describeSwim(swimmingWorkout swim: Swim) {
    print(String(format: "Swimming workout: stroke: %@, distance: %.2f m., time: %.2f min.", swim.stroke, swim.distance, swim.time))
}

/*:
 Переберите все тренировки в массиве `workouts` и, с помощью приведения типов, вызовите либо `describeRun(runningWorkout:)`, либо `describeSwim(swimmingWorkout:)` для каждого.  Обратите внимание, что будет выведено в консоль.
 */
workouts.forEach{ workout in
    switch workout {
    case let run as Run:
        describeRun(runningWorkout: run)
    case let swim as Swim:
        describeSwim(swimmingWorkout: swim)
    default:
        print("Unknown Type Error!")
    }
}
/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Ранее](@previous)  |  страница 2 из 2
