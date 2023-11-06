//
//  main.swift
//  22. 10811번
//
//  Created by 최수훈 on 11/6/23.
//

import Foundation

let MN = readLine()!.split(separator: " ").map { Int($0)! }
let m = MN[1]
var buckets = [Int](1...MN[0])

/* For문으로 삭제

for _ in 0...m - 1 {
    let change = readLine()!.split(separator: " ").map { Int($0)! }
    let start = change[0] - 1
    let end = change[1] - 1
    
    for i in start..<end {
        let endNum = buckets[end]
        buckets.remove(at: end)
        buckets.insert(endNum, at: i)
    }
}
*/

for _ in 0...m - 1 {
    let change = readLine()!.split(separator: " ").map { Int($0)! }
    let start = change[0] - 1
    let end = change[1] - 1
    buckets.replaceSubrange(start...end, with: buckets[start...end].reversed())
}

buckets.map { num in
    print(num, terminator: " ")
}


