import UIKit

// 계산기 구현하기(사칙연산 간단하게)

enum Operator: String {
    case add = "+"
    case substract = "-"
    case multiple = "*"
    case divide = "/"
}

// 일급객체로서의 함수로 구현

let add: (Int, Int) -> Int = { $0 + $1 }
let subtract: (Int, Int) -> Int = { $0 - $1 }
let multiple: (Int, Int) -> Int = { $0 * $1 }
let divide: (Int, Int) -> Int = { $0 / $1 }

func calculator(op: Operator) -> (Int, Int) -> Int {
    switch op {
    case .add:
        return add
    case .substract:
        return subtract
    case .multiple:
        return multiple
    case .divide:
        return divide
    }
}

calculator(op: .add)(5,6)

/*

// enum과 함수 사용
enum Operator: String {
    case add = "+"
    case substract = "-"
    case multiple = "*"
    case divide = "/"
}

// 더하기
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

// 빼기
func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

// 곱하기
func multiple(_ a: Int, _ b: Int) -> Int {
    return a * b
}

// 나누기
func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}


func calculator(op: Operator, _ a: Int, _ b: Int) {
    var result = 0
    switch op {
    case .add:
        result = add(a, b)
    case .substract:
        result = subtract(a, b)
    case .multiple:
        result = multiple(a, b)
    case .divide:
        result = divide(a, b)
    }
    print("\(a) \(op.rawValue) \(b) = \(result)")
}

calculator(op: .multiple, 10, 2)
*/
