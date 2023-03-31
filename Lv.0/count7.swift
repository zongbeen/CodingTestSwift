//
//  count7.swift
//  CodingTest
//
//  Created by 한종빈 on 2023/03/31.
//

import Foundation

func solution(_ array:[Int]) -> Int {
        return array.map{String($0)}.joined().filter{$0 == "7"}.count
    }
