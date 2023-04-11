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

/*
String 변수에 입력받은 문자열을 하나씩 더한다.
String 변수의 길이가 n 이 되면 result 배열에 추가한 후 String 변수는 다시 초기화한다.
반복문이 종료된 후 String 변수가 비어있지 않으면 result 배열에 String 변수의 값을 추가한다. (문자열의 길이가 n으로 나누어 떨어지지 않는 경우)
*/
