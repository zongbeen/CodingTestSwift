//
//  피보나치 수.swift
//  CodingTest
//
//  Created by 한종빈 on 2/25/25.
//

import Foundation

func fi(_ num: Int) -> Int {
    if num <= 1 {
        return num
    }
    return fi(num - 1) + fi(num - 2)
}
