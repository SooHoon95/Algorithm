//
//  main.swift
//  29. 10809
//
//  Created by 최수훈 on 11/9/23.
//

import Foundation

let S = readLine()!
var arr = [Int](0...26)
var resultArr = [Int](repeating: -1 , count: 26)
var SArr = S.map { Int($0.asciiValue!) - 97 }

for i in arr {
    if SArr.contains(arr[i]) {
        resultArr[i] = SArr.firstIndex(of: arr[i])!
    }
}

resultArr.forEach {
    print($0, terminator: " ")
}
// 97 - 122
