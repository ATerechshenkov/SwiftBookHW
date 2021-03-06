import Foundation

/*:
 ### Задание 3
 
 Необходимо вычислить площадь и периметр прямоугольного треугольника.
 
 >Условия:
 Катеты прямоугольного треугольника:
 AC = 8.0, CB = 6.0. Гипотенузу треугольника AB вычисляем при помощи функции `sqrt(Double)`, заменив `Double` суммой квадратов катетов
 
 */
let (a, b) = (8.0, 6.0)

let c = sqrt(pow(a,2) + pow(b,2))
let S = (a * b)/2
let P = a + b + c
//: [Ранее: Задание 2](@previous) | Задание 3 из 3
