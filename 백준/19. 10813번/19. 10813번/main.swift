//
//  main.swift
//  19. 10813번
//
//  Created by 최수훈 on 2023/10/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]
//var array = [Int](1...N)
var array = [1...N]

for _ in 0..<M {
    let buckets = readLine()!.split(separator: " ").map { Int($0)! }
    let firstball = array[buckets[0] - 1]
    let secondball = array[buckets[1] - 1]
    
    array[buckets[0] - 1] = secondball
    array[buckets[1] - 1] = firstball
}

array.forEach {
    print($0,terminator: " ")
}
