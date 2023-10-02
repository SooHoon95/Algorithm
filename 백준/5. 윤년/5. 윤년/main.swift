//
//  main.swift
//  5. 윤년
//
//  Created by 최수훈 on 2023/10/02.
//

import Foundation

let input = Int(readLine()!)!

func solution(_ num: Int) -> Int {
    if (num % 4) == 0 && (num % 100 != 0 || num % 400 == 0 ) {
        return 1
    }
    return 0
}


print(solution(input))
