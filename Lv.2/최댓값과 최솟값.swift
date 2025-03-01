//
//  최댓값과 최솟값.swift
//  CodingTest
//
//  Created by 한종빈 on 2/25/25.
//

/*
 문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 "(최소값) (최대값)"형태의 문자열을 반환하는 함수, solution을 완성하세요.
 예를들어 s가 "1 2 3 4"라면 "1 4"를 리턴하고, "-1 -2 -3 -4"라면 "-4 -1"을 리턴하면 됩니다.

 제한 조건
 s에는 둘 이상의 정수가 공백으로 구분되어 있습니다.
 
 입출력 예
 s = "1 2 3 4" -> return = "1 4"
 s = "-1 -2 -3 -4" -> return = "-4 -1"
 s = "-1 -1" -> return = "-1 -1"
*/

import Foundation

func solution(_ s: String) -> String {
    let numbers = s.split(separator: " ").compactMap { Int($0) }
    return "\(numbers.min()!) \(numbers.max()!)"
}

func solution2(_ s:String) -> String {
    let numbers = s.split(separator: " ").map {Int($0)!}
    if let minValue = numbers.min(), let maxValue = numbers.max() {
        return "\(minValue) \(maxValue)"
    }
    return ""
}
