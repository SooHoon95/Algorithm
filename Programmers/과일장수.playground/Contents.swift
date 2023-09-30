import UIKit

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    // k = 최대점수
    // m = 한 상자당 갯수
    // score = 점수 배열
    
    /*
     1. score.count = 사과 갯수
     2. 사과 갯수 / m 해서 총 몇 상자 나오는지 구하기
     3. 젤 낮은 점수끼리 묶어서 배열만들기
     4. 한 상자당 점수 구하기
     5. 토탈 구하기
     */
    
    let appCount = score.count
    let boxCount = appCount / m
    var boxes: [[Int]] = []
    
    let a = score.sorted(by: <)
    print(a)
    
    return 0
}


print(solution(4, 3, [4,1,2,2,4,4,4,4,1,2,4,2]))
