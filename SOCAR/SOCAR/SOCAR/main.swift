//
//  main.swift
//  SOCAR
//
//  Created by 최수훈 on 11/18/23.
//

import Foundation

//func solution(_ l:Int, _ x:[Int]) -> [Int] {
//    var result: [Int] = []
//    let k = x.count
//    
//    for brick in 1...k {
//        print("========== 벽돌 갯수 \(brick) ============")
//        print(x)
//        var kHeights: Set<Int> = []
//        
//        if brick == 1 {
//            result.append(1)
//        } else { // 벽돌 두개 이상
//            
//            for i in 0..<brick { // 벽돌 하나씩 차례 가지고 오기
//                print("조사하는 벽돌 i = \(i)번째 벽돌")
//                var height = 1
//                
//                for j in 0..<brick { // 모든 벽돌의 커버 범위와 대조 하는 반복문
//                    print("j = \(j)")
//                    if j != i{
//                        print("⭐️ 중첩되지 않음 || ", terminator: "")
//                        // i = 조사하는 벽돌의 이름
//                        // j = 반복문으로 대조하는 벽돌이름
//                        
//                        // i 를 j 범위에 대조하기
//                        if x[j] + 1..<x[j] + l ~= x[i] || x[j] + 1..<x[j] + l ~= x[i] + l {
//                            height += 1
//                            print("height += 1" )
//                        }
//
//                    }
//                    
//                }
//                
//                print("🔥🔥 현재 벽돌 갯수 : \(brick) 로 쌓은 높이 \(height) 🔥🔥\n\n")
//                kHeights.insert(height)
//            }
//            result.append(kHeights.count)
//            print("⬆️ 현재 벽돌 갯수 : \(brick) 일때 result \(result)")
//        }
//        
//    }
//    print(result)
//    return []
//}
//
//solution(5, [1,4,7,9])
////solution(2, [6,10,8])
////solution(3, [2,3,2,3])


func solution(_ n: Int, _ colors: [[Int]]) -> Int {
    // 격자 초기화
    var grid = Array(repeating: Array(repeating: 0, count: n), count: n)

    // colors 배열을 사용하여 격자에 색상 정보 입력
    for color in colors {
        let x = color[0] - 1
        let y = color[1] - 1
        grid[x][y] = color[2]
    }

    var changes = 0

    // 격자 순회 및 조건 검사
    for i in 0..<n {
        for j in 0..<n {
            // 가로 방향 확인
            if j <= n - 3 {
                let colorsSet = Set([grid[i][j], grid[i][j+1], grid[i][j+2]])
                if colorsSet.count != 1 && colorsSet.count != 3 {
                    changes += 1
                }
            }

            // 세로 방향 확인
            if i <= n - 3 {
                let colorsSet = Set([grid[i][j], grid[i+1][j], grid[i+2][j]])
                if colorsSet.count != 1 && colorsSet.count != 3 {
                    changes += 1
                }
            }
        }
    }

    return changes
}

print(solution(3, [[1,2,1],[2,1,2],[3,3,2]]))

