//
//  ThrowBall.swift
//  CodingTest
//
//  Created by 한종빈 on 2023/04/02.
//

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[((k-1)*2) % numbers.count]
}
