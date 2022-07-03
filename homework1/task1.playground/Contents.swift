import UIKit

protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)
    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}


struct Homework: HomeworkService{

func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
    let first: Int = x / y
    let second: Int = x % y
    return (first, second)
}

    func fibonacci(n: Int) -> [Int] {
    var fibonacciAray: [Int] = [0, 1]
    if n > 2 {
        var iter: Int = 1
        while fibonacciAray.count != n {
            let new = fibonacciAray[iter] + fibonacciAray[iter - 1]
            fibonacciAray.append(new)
            iter += 1
        }
    }
    return fibonacciAray
}

func sort(rawArray: [Int]) -> [Int] {
    var array: Array = rawArray
    var check: Bool = false
    while check != true{
        for i in 1..<array.count{
            check = true
            if array[i] < array[i - 1] {
                let tempt = array[i]
                array[i] = array[i - 1]
                array[i - 1] = tempt
                check = false
            }
        }
    }
    return array
}

func firstLetter(strings: [String]) -> [Character] {
    var characters: [Character] = []
    for elem in strings{
        for char in elem{
            characters.append(char)
            break
        }
    }
    return characters
}

func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
    var newArray: [Int] = []
    for elem in array{
        if condition(elem){
            newArray.append(elem)
        }
    }
    return newArray
}
}
