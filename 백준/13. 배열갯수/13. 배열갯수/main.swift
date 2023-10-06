//
//  main.swift
//  13. 배열갯수
//
//  Created by 최수훈 on 2023/10/06.
//

import Foundation

let n = Int(readLine()!)!
var array = readLine()!.components(separatedBy: " ").map { Int($0)! }
let v = Int(readLine()!)!

var result = 0
array.forEach {
    if $0 == v {
        result += 1
    }
}
print(result)
