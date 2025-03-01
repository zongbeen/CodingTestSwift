//
//  TurnParentheses.swift
//  CodingTest
//
//  Created by 한종빈 on 2/28/25.
//

/*
 다음 규칙을 지키는 문자열을 올바른 괄호 문자열이라고 정의합니다.

 (), [], {} 는 모두 올바른 괄호 문자열입니다.
 만약 A가 올바른 괄호 문자열이라면, (A), [A], {A} 도 올바른 괄호 문자열입니다. 예를 들어, [] 가 올바른 괄호 문자열이므로, ([]) 도 올바른 괄호 문자열입니다.
 만약 A, B가 올바른 괄호 문자열이라면, AB 도 올바른 괄호 문자열입니다. 예를 들어, {} 와 ([]) 가 올바른 괄호 문자열이므로, {}([]) 도 올바른 괄호 문자열입니다.
 대괄호, 중괄호, 그리고 소괄호로 이루어진 문자열 s가 매개변수로 주어집니다. 이 s를 왼쪽으로 x (0 ≤ x < (s의 길이)) 칸만큼 회전시켰을 때 s가 올바른 괄호 문자열이 되게 하는 x의 개수를 return 하도록 solution 함수를 완성해주세요.
 */

import Foundation

func solution(_ s:String) -> Int {
    var answer: Int = 0
    var string = s
    var turnString = s

    for _ in 1...s.count {
       while string.contains("{}") || string.contains("[]") || string.contains("()") {
                string = string.replacingOccurrences(of: "{}", with: "")
                string = string.replacingOccurrences(of: "()", with: "")
                string = string.replacingOccurrences(of: "[]", with: "")
        }


        if string.count == 0 {
            answer += 1
        }

        string = turnString
        string.append(string.removeFirst())
        turnString = string
    }

    return answer
}
