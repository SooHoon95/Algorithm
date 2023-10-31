//
//  main.swift
//  16. 2562번
//
//  Created by 최수훈 on 2023/10/22.
//

import Foundation

var array = [Int]()

for _ in 0...8 {
    let input = Int(readLine()!)!
    array.append(input)
}
let max = array.max()!
let maxIndex = array.firstIndex(of: max)

print("\(max)\n\(maxIndex! + 1)")
