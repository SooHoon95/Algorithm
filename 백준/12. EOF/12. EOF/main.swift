//
//  main.swift
//  12. EOF
//
//  Created by 최수훈 on 2023/10/05.
//
import Foundation

while let line = readLine() {
    var input = line.components(separatedBy: " ").map { Int($0)! }
    var a = input[0]
    var b = input[1]
    print(a+b)
}
