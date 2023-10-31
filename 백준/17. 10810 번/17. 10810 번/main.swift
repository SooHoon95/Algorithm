//
//  main.swift
//  17. 10810 번
//
//  Created by 최수훈 on 2023/10/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

// array 초기화
//var array: [Int] = []
//for _ in 0...N - 1 {
//    array.append(0)
//}
var array = [Int](repeating: 0, count: N)

//ijk방식으로 공 넣기
for _ in 0..<M {
    let ijk = readLine()!.split(separator: " ").map { Int($0)! }
    for index in ijk[0]...ijk[1] {
        array[index - 1] = ijk[2]
    }
}
2222

array.forEach { ballNum in
    print(ballNum, terminator: " ")
}
