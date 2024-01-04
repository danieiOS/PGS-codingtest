//
//  Day2.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/4/24.
//

import Foundation

//MARK: - 두 수의 나눗셈
func solution(_ num1, _ num2) {
	return num1 / num2
}

//MARK: - 숫자 비교하기
func solution(_ num1, _ num2) {
	if num1 == num2 {
		return 1
	} else {
		return -1
	}
}

//MARK: - 분수의 덧셈
func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
		// 최대로 나오는 분자
		let maxDenum = num1 * denum2 + num2 * denum1
		// 최대로 나오는 분모
		let maxNum = num1 * num2
		var minX = 1
		// 약분
		for i in 1...maxDenum {
				if (maxDenum % i == 0 && maxNum % i == 0) {
						minX = i
				}
		}
		return [maxDenum / minX, maxNum / minX]
}

//MARK: - 배열 두 배 만들기

//for을 이용
func solution(_ numbers: [Int]) -> [Int] {
	// 제한사항
	guard 1...1000 ~= numbers.count else {
		return []
	}
	var answer: [Int] = []
	for num in numbers {
		answer.append(num * 2)
	}
	return answer
}

//map을 이용(고차함수)
func solution(_ numbers: [Int]) -> [Int] {
	guard 1...1000 ~= numbers.count else { return [] }
	var answer: [Int] = []
	answer = numbers.map { $0 * 2 }
	return answer
}
