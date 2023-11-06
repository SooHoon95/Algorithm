//
//  main.swift
//  21. 3052번
//
//  Created by 최수훈 on 11/6/23.
//

import Foundation

var remains: Set<Int> = []

for _ in 0...9 {
    let input = Int(readLine()!)!
    let remain = input % 42
    remains.insert(remain)
}

print(remains.count)
