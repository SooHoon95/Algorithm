//
//  main.swift
//  28.11720
//
//  Created by 최수훈 on 11/9/23.
//

import Foundation

let count = Int(readLine()!)!
var numString = readLine()!
var result = 0

//for i in numString {
//    result += Int(String(i))!
//}
numString.map {
    result += Int(String($0))!
}
print(result)



let str = "12345"
var result = 0
// 1. map
str.map { print($0) }

// 2. forEach
str.forEach { print($0) }

// 3.for문
for i in str {
    print(i)
}
