//
//  Day 11.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/13/24.
//

import Foundation
//MARK: - 주사위의 개수
///1. reduce
func solution(_box: [Int], _ n: Int) -> Int {
	/// (가로/n) * (세로/n) * (높이/n)  하면 box에 들어갈 수 있는 최대 주사위 개수를 구할 수 있다.
	let result = box.reduce(1) { x, y in // x: 이전에 계산한 값, y: 현재 box의 요소
		y/n * x
	}
	return result
}

// 다른 풀이
func solution(_ box: [Int], _ n: Int) -> Int {
	return box.map { $0 / n }.reduce(1, *)
}
//MARK: - 합성수 찾기
func solution(_ n: Int) -> Int {
	if n < 4 {
		return 0
	}
	var result = 0
	for i in (4...n) {
		for j in (2...i/2) {
			if i % j == 0 {
				result += 1
				break
			}
		}
		return result
	}
}
//MARK: - 최댓값 만들기 (1)
///1. sort(by:)
func solution(_ numbers: [Int]) -> Int {
	var nums = numbers
	nums.sort(by: >)
	return nums[0] * nums[1]
}
//MARK: - 팩토리얼
/// 1부터 i까지 정수의 곱
func solution(_ n: Int) -> Int {
	var fac = 1
	for i in 1...n {
		fac *= i
		if fac == n {
			return i
		} else if fac > n {
			return i - 1
		}
	}
	return 1
}
