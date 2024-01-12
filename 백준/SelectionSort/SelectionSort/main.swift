//
//  main.swift
//  SelectionSort
//
//  Created by 최수훈 on 1/12/24.
//

import Foundation

var array: Array<Int> = []

while array.count < 10 {
    array.append(Int.random(in: 1...100))
}

/// 선택정렬
///
/// 배열에서 가장 큰 수 찾기
///     모든 배열 돌면서 가장 큰 수 찾기
///     for ( i = array.count - 1; i > 0; i--;)
/// 가장 큰 수와 마지막 자리 교체하기 -> 언제까지? array.count 부터 1자리까지
///

print("정렬전: \(array)")
for i in (1...array.count - 1).reversed() {
    // 가장 큰 수 찾기
    var maxNum = 0
    var index = 0
    // array를 0부터 i번 순서까지 돌려서 가장 큰 수를 찾아서 변수에 저장
    // 그 변수를 i 번과 바꿈
    // 이걸 count - 1 부터 1번 index까지 바꿈
    for j in 0...i {
        if array[j] > maxNum {
            maxNum = array[j]
            index = j
        }
    }
    //switch maxNum <-> array[i]
    let lastNum =  array[i]
    array[i] = maxNum
    array[index] = lastNum
}
print(array)




