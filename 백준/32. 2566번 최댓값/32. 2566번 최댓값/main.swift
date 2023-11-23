//
//  main.swift
//  32. 2566번 최댓값
//
//  Created by 최수훈 on 11/21/23.
//

import Foundation

var matricks: [[Int]] = []
var result = 0

for _ in 1...9 {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    matricks.append(line)
}

let maxValue = matricks.flatMap { $0 }.max()
//var a = 0
//var k = 0
//for i in 0...8 {
//    for j in 0...8 {
//        if result < matricks[i][j] {
//            result = matricks[i][j]
//            a = i + 1
//            k = j + 1
//        }
//    }
//}
//
//print(result)
//print(a, k)


for i in 0...8 {
    for j in 0...8 {
        if matricks[i][j] == maxValue {

            print(maxValue!)
            print(i + 1, j + 1)
            break
        }
    }
}






