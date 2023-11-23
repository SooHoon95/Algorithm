//
//  main.swift
//  34. 10798
//
//  Created by 최수훈 on 11/23/23.
//

import Foundation
//
//var result = Array(repeating: Array(repeating: "", count: 15), count: 5)
//
//for i in 0...4 {
//    var word = readLine()!.map { String($0) }
//    var lastIndexOfWord = word.count
//    result[i].replaceSubrange(0..<lastIndexOfWord, with: word)
//}
//
//for i in 0..<15 {
//    for j in 0...4 {
//        print(result[j][i], terminator: "")
//    }
//}

var rows: [[String]] = []
var maxCount = 0

for _ in 0...4 {
    var row = readLine()!.split(separator: "").map { String($0) }
    print(row)
    rows.append(row)
    if row.count > maxCount { maxCount = row.count }
}

var result: [String?] = []

// j 는 행 수
// i 는 최대 열 수
for i in 0..<maxCount {
    for j in 0..<rows.count {
        if i >= rows[j].count {
            result.append(nil)
        } else {
            result.append(rows[j][i])
        }
    }
}

print(result.compactMap { $0 }.joined())

