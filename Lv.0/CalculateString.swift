//
//  CalculateString.swift
//  CodingTest
//
//  Created by 한종빈 on 2023/04/04.
//

import Foundation

func solution(_ my_string: String) -> Int {
    var arr = my_string.components(separatedBy: " ")
    var answer: Int = Int(arr[0])!

    for (index, num) in arr.enumerated() {
        if index % 2 == 1 {
            if num == "+" {
                answer += Int(String(arr[index + 1]))!
            } else {
                answer -= Int(String(arr[index + 1]))!
            }
        }
    }

    return answer
}

//func solution(_ myString: String) -> Int {
//    return myString.replacingOccurrences(of: "- ", with: "-")
//        .replacingOccurrences(of: "+", with: "")
//        .trimmingCharacters(in: .whitespacesAndNewlines)
//        .split(separator: " ")
//        .map { Int($0)! }
//        .reduce(0, +)
//}
