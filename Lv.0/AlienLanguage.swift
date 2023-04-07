//
//  AlienLanguage.swift
//  CodingTest
//
//  Created by 한종빈 on 2023/04/07.
//PROGRAMMERS-962 행성에 불시착한 우주비행사 머쓱이는 외계행성의 언어를 공부하려고 합니다. 알파벳이 담긴 배열 spell과 외계어 사전 dic이 매개변수로 주어집니다. spell에 담긴 알파벳을 한번씩만 모두 사용한 단어가 dic에 존재한다면 1, 존재하지 않는다면 2를 return하도록 solution 함수를 완성해주세요.


//

import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    for i in 0..<dic.count {
        var count = 0
        for s in spell {
            if dic[i].contains(s) {
                count += 1
            }
        }
        if count == spell.count {
            return 1
        }
    }
    return 2
}

//func solution(_ spell: [String], _ dic: [String]) -> Int { dic.map { String($0.sorted()) }.contains(spell.sorted().joined()) ? 1 : 2 }
