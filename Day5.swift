//
//  Day5.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/7/24.
//

import Foundation
//MARK: - 옷가게 할인 받기
///1. 할인율
///2. switch 조건문
func solution(_ price: Int) -> Int {
	switch  price {
	case 0..<100000:
		return price
	case 100000..<300000:
		return Int(Double(price) * 0.95)
	case 300000..<500000:
		return Int(Double(price) * 0.9)
	default:
		return Int(Double(price) * 0.8)
	}
}
//MARK: - 아이스 아메리카노
///1. 연산자
///2. 할인율
func solution(_ money: Int) -> [Int] {
	let count = money / 5500
	return [count, money - 5500 * count]
}
//MARK: - 나이 출력
func solution(_ age: Int) -> Int {
	let x = 2022
	return (x - age) + 1
}
//MARK: - 배열 뒤집기
///1. reversed()
///2. reverse()
///두 개의 차이점을 알면 좋다.
func solution(_ num_list: [Int]) -> [Int] {
	var result = num_list
	result.reverse() //reverse() 사용 시, 배열을 변형시킴 (reverse()는 mutating 임)
	return result
}

//다른 풀이
func solution(_ num_list: [Int]) -> [Int] {
	num_list.reversed() //reversed() 를 사용하면 매개변수로 받아오는 배열을 바꾸지 않고 새 배열을 반환한다.
}
