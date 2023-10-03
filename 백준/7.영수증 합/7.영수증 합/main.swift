//
//  main.swift
//  7.영수증 합
//
//  Created by 최수훈 on 2023/10/03.
//

import Foundation

let sum = Int(readLine()!)!
let sort = Int(readLine()!)!
var result = 0

for i in 1...sort {
    var eachPrice = readLine()!.components(separatedBy: " ").map { Int($0)! }
    result += eachPrice[0] * eachPrice[1]
    
    if i == sort {
        if sum == result {
            print("Yes")
        } else {
            print("No")
        }
    }
}


