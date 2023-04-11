//
//  RectangleArea.swift
//  CodingTest
//
//2차원 좌표 평면에 변이 축과 평행한 직사각형이 있습니다.
//직사각형 네 꼭짓점의 좌표 [[x1, y1], [x2, y2], [x3, y3], [x4, y4]]가 담겨있는 배열 dots가 매개변수로 주어질 때,
//직사각형의 넓이를 return 하도록 solution 함수를 완성해보세요.
//
//  Created by 한종빈 on 2023/04/09.
//

import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let dots = dots.sorted(by: { ($0[0], $0[1]) < ($1[0], $1[1]) })
    return (dots.last![0] - dots.first![0]) * (dots.last![1] - dots.first![1])
}

//func solution(_ dots:[[Int]]) -> Int {
//    let a = [dots[1][0] - dots[0][0], dots[1][1] - dots[0][1]]
//    let b = [dots[2][0] - dots[0][0], dots[2][1] - dots[0][1]]
//
//    return abs(a[0]*b[1] - a[1]*b[0])
//}

//가나다라마바사
