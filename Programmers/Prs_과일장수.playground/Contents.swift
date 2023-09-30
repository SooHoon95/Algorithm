import UIKit

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    // k = 최대점수
    // m = 한 상자당 갯수
    // score = 점수 배열
    
    /*
     1. score.count = 사과 갯수
     2. 사과 갯수 / m 해서 총 몇 상자 나오는지 구하기
     3. 정렬해서 내림차순으로 박스에 담기
     4. 한 상자당 점수 구하기
     5. 토탈 구하기
     */
    let sortedScore = score.sorted(by: >)
    var boxes: [[Int]] = []
    
    // 1. 세개씩 짤라서 담는 방법
    // 2.
    for i in 0..<score.count {
        sortedScore[i]
    }
    
    return 0
}


print(solution(4, 3, [4,1,2,2,4,4,4,4,1,2,4,2]))
