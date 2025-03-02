//
//  FactorizationIntoPrimes.swift
//  CodingTest
//
//  Created by 한종빈 on 2023/04/02.
//

import Foundation

func solution(_ n:Int) -> [Int] {
        var result: [Int] = []
        var temp = n
        for i in 2...temp {
            while temp % i == 0 {
                temp = temp / i
                result.append(i)
            }
        }

        return Array(Set(result)).sorted()
    }
