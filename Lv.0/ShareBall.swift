//
//  ShareBall.swift
//  CodingTest
//
//  Created by 한종빈 on 2023/04/05.
//

import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    var value : Double = 0
    value = C(balls, share)
    return Int(value)
}

func C( _ num1 : Int , _ num2 : Int) -> Double {
    var value : Double = 1

    for I in 0 ... num2 - 1 {
        value = value * (Double(num1) - Double(I))
    }

    for I in stride(from: num2, to: 1, by: -1) {
        value = value / Double(I)
    }

    return value
}

//func solution(_ balls:Int, _ share:Int) -> Int64 {
//    var min = balls - share < share ? balls - share : share
//
//    var answer: Int64 = 1
//    if min == 0 { return 1 }
//    for i in 1...min {
//        answer *= Int64(balls-min+i)
//        answer /= Int64(i)
//    }
//    return answer
//}

//func dfs(_ n : Int, _ r: Int) -> Int {
//  if n == r { return 1 }
//
//  if r == 1 { return n }
//
//  return dfs(n-1, r-1) + dfs(n-1, r)
//}
//
//func solution(_ balls:Int, _ share:Int) -> Int {
//    return dfs(balls, share)
//}
