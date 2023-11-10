//
//  main.swift
//  30. 2675
//
//  Created by 최수훈 on 11/10/23.
//

import Foundation

let count = Int(readLine()!)!
//var result: [String] = [""]

//for i in 0..<count {
//    let input = readLine()!.split(separator: " ").map { String($0) }
//        
//        input[1].forEach {
//            var ch = String($0)
//            for _ in 0..<Int(input[0])! - 1 {
//                ch.append(String($0))
//            }
//            if result.count != i + 1 {
//                result.append("")
//            }
//            result[i] += ch
//
//        }
//}
//
//result.forEach {
//    print($0)
//}

for _ in 0..<count {
    let input = readLine()!.split(separator: " ").map { String($0) }
    print(input[1].map{ String(repeating: $0, count: Int(input[0])!) }.joined())
}
