//
//  main.swift
//  8. 코딩은 체육과목
//
//  Created by 최수훈 on 2023/10/03.
//

import Foundation

var input = Int(readLine()!)!

while input % 4 != 0 {
    input = Int(readLine()!)!
}

let longCount = input / 4
var result = ""
for _ in 0..<longCount {
    result += "long "
}
result += "int"
print(result)
