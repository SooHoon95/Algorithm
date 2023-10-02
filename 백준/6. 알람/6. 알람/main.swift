//
//  main.swift
//  6. 알람
//
//  Created by 최수훈 on 2023/10/02.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }


func solution(_ input: [Int]) -> String {
    var hour = input[0]
    let minute = input[1]
    var newMinute = minute - 45
    
    if newMinute < 0  {
        hour -= 1
        newMinute += 60
        
    }
    
    if hour < 0 { hour = 23 }
    if newMinute == 60 { newMinute = 0}
    
    return "\(hour) \(newMinute)"
}

print(solution(input))


