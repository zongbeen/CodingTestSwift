//
//  행렬의 곱셈File.swift
//  CodingTest
//
//  Created by 한종빈 on 3/1/25.
//

import Foundation
/*
 문제 설명
 2차원 행렬 arr1과 arr2를 입력받아, arr1에 arr2를 곱한 결과를 반환하는 함수, solution을 완성해주세요.

 제한 조건
 행렬 arr1, arr2의 행과 열의 길이는 2 이상 100 이하입니다.
 행렬 arr1, arr2의 원소는 -10 이상 20 이하인 자연수입니다.
 곱할 수 있는 배열만 주어집니다.
 */

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let rowA = arr1.count
    let colA = arr1[0].count
    let rowB = arr2.count
    let colB = arr2[0].count
    
    var result = Array(repeating:Array(repeating: 0, count:colB), count:rowA)
    for i in 0..<rowA {
        for j in 0..<colB {
            for k in 0..<colA {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    return result
}
