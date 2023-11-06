//
//  main.swift
//  20. 5597번
//
//  Created by 최수훈 on 11/4/23.
//

import Foundation

//var students: [Int] = []
//var numbers = [Int](1...30)
//
//// 다 넣고 한번에 정렬하기
//for i in 0...27 {
//    let num = Int(readLine()!)!
//    students.append(num)
//}
//students.sort()
//
//for num in numbers {
//    if !students.contains(num) {
//        print(num)
//    }
//}

var students: Set<Int> = []
for _ in 0...27 {
    let input = Int(readLine()!)!
    students.insert(input)
}

for i in 1...30 {
    if !students.contains(i) {
        print(i)
    }
}
// 넣으면서 매번 정렬하기
// 1. 매번 sort()
// 2. 조건거어서 매번 정렬
