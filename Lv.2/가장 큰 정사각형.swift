//
//  가장 큰 정사각형.swift
//  CodingTest
//
//  Created by 한종빈 on 3/1/25.
//

/*
 1와 0로 채워진 표(board)가 있습니다. 표 1칸은 1 x 1 의 정사각형으로 이루어져 있습니다. 표에서 1로 이루어진 가장 큰 정사각형을 찾아 넓이를 return 하는 solution 함수를 완성해 주세요. (단, 정사각형이란 축에 평행한 정사각형을 말합니다.)
 제한사항
 표(board)는 2차원 배열로 주어집니다.
 표(board)의 행(row)의 크기 : 1,000 이하의 자연수
 표(board)의 열(column)의 크기 : 1,000 이하의 자연수
 표(board)의 값은 1또는 0으로만 이루어져 있습니다.
 */
import Foundation

func solution(_ board:[[Int]]) -> Int {
    var arr = board
    var max = 0

    if board.count == 1 || board[0].count == 1 {
        max = board.flatMap{$0}.contains(1) ? 1 : 0
    }
    
    for i in 1..<board.count {
        for j in 1..<board[0].count {
            if arr[i][j] == 1 {
                let min = [arr[i-1][j-1], arr[i-1][j], arr[i][j-1]].min()!
                arr[i][j] += min
                max = arr[i][j] > max ? arr[i][j] : max
            }
        }
    }

    return max * max
}
