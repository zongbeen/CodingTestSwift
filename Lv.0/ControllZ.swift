//
//  ControllZ.swift
//  CodingTest
//
//  Created by 한종빈 on 2023/03/31.
//

import Foundation

func solution(_ s: String) -> Int {
        var stack = [Int]()

        for w in s.components(separatedBy: [" "]) {
            if w == "Z" {
                stack.popLast()
            } else {
                stack.append(Int(w)!)
            }
        }
        return stack.reduce(0, +)
    }
