//
//  OutputRightTriangle2.swift
//  CodingTest
//
//  Created by 한종빈 on 2023/04/03.
//

import Foundation

func solution(_ sides:[Int]) -> Int {
    let min = sides.min() ?? 0
    let max = sides.max() ?? 2
    print(sides)
    return (1...max).filter { max < $0 + min }.count + (max+1..<min+max).count
}

//func solution(_ sides:[Int]) -> Int {
//    return sides[0]+sides[1]-abs(sides[0]-sides[1])-1
//}

//func solution(_ sides: [Int]) -> Int { sides.max()! - (sides.max()! - sides.min()!) + sides.reduce(0, +) - sides.max()! - 1 }
