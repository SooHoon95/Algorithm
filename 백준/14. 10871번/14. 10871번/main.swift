//
//  main.swift
//  14. 10871번
//
//  Created by 최수훈 on 2023/10/06.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let n = input[0]
let X = input[1]

let A = readLine()!.components(separatedBy: " ")
    .map { Int($0)! }
    .filter { $0 < X }
    
var result = ""

A.map { result += "\($0) "}
print(result)

// 또는
// A.map { print($0, terminator: " ") }

let input1 = readLine()!.components(separatedBy: " ").map { Int($0)! }
let input2 = readLine()!.components(separatedBy: " ").map { Int($0)! }

for i in input2 {
    if i < input1[1] {
        print(i, terminator: " ")
    }
}
