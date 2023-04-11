//
//  SliceArray.swift
//  CodingTest
//
//문자열 my_str과 n이 매개변수로 주어질 때,
//my_str을 길이 n씩 잘라서 저장한 배열을 return하도록 solution 함수를 완성해주세요.
//
//  Created by 한종빈 on 2023/04/11.
//

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result: [String] = []
    var answer = ""

    for s in my_str {
        answer += String(s)
        if answer.count == n {
            result.append(answer)
            answer = ""
        }
    }
    if !answer.isEmpty {
        result.append(answer)
    }
    return result
}
