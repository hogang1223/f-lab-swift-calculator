import UIKit
import Foundation

// 계산기 구현하기(사칙연산 간단하게)

// Command Pattern으로 구현

protocol Command {
    func calculate(_ num1: Int, _ num2: Int)
}

class Add: Command {
    func calculate(_ num1: Int, _ num2: Int) {
        print("\(num1) + \(num2) = \(num1 + num2)")
    }
}

class Subtract: Command {
    func calculate(_ num1: Int, _ num2: Int) {
        print("\(num1) - \(num2) = \(num1 - num2)")
    }
}

class Multiply: Command {
    func calculate(_ num1: Int, _ num2: Int) {
        print("\(num1) X \(num2) = \(num1 * num2)")
    }
}

class Divide: Command {
    func calculate(_ num1: Int, _ num2: Int) {
        guard num2 != 0 else {
            print("\(num1) / \(num2) = 0")
            return
        }
        print("\(num1) / \(num2) = \(num1 / num2)")
    }
}

class Calculator {
    private var command: Command
    init(command: Command) {
        self.command = command
    }
    
    func calculating(_ num1: Int, _ num2: Int) {
        self.command.calculate(num1, num2)
    }
    
}

let add = Add()
let subtract = Subtract()
let multiply = Multiply()
let divide = Divide()
Calculator(command: add).calculating(3, 5)
