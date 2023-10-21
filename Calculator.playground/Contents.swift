import UIKit

// 계산기 구현하기(사칙연산 간단하게)

// 일급객체로서의 함수로 구현
// 클로저
let add: (Int, Int) -> Int = { $0 + $1 }
let subtract: (Int, Int) -> Int = { $0 - $1 }
let multiple: (Int, Int) -> Int = { $0 * $1 }
let divide: (Int, Int) -> Int = {
    guard $1 != 0 else { return 0 }
    return $0 / $1
}


func calculator(_ a: Int, _ b: Int, op: (Int, Int) -> Int) -> Int {
    return op(a,b)
}
print(calculator(1, 0, op: divide))
