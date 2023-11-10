//
//  main.swift
//  31. 2738
//
//  Created by 최수훈 on 11/10/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var A: [[Int]] = []
var B: [[Int]] = []
var result: [[Int]] = []

// set A
for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    A.append(arr)
}

// set B
for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    B.append(arr)
}

for s in 0..<n {
    var temp: [Int] = []
    for k in 0..<m {
        temp.append(A[s][k] + B[s][k])
    }
    result.append(temp)
    print(result[s].map { String($0) }.joined(separator: " "))
}


