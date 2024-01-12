//
//  Day 8.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/11/24.
//

import Foundation
//MARK: - 배열 자르기
///1. 배열의 append()
func solution(_ numbers: [Int], _ num1: Int, _ num2: Int) -> [Int] {
	var result = [Int]()
	// 범위만큼 for문 돌려서 result에 해당 요소 추가
	for i in (num1...num2) {
		result.append(numbers[i])
	}
	return result
}
//MARK: - 외계행성의 나이
///1. Dictionary 타입
func solution(_ age: Int) -> String {
	let alienAge = [
		"0": "a",
		"1": "b",
		"2": "c",
		"3": "d",
		"4": "e",
		"5": "f",
		"6": "g",
		"7": "h",
		"8": "i",
		"9": "j"
	]
	var result = ""
	// age 문자열에 요소를 하나씩 가져와 alienAge의 key 값으로 보내줌
	for i in String(age) {
		result += alienAge[String(i)]!
	}
	return result
}
//MARK: - 진료순서 정하기
///1. sorted(by:)
///2. 반복문
func solution(_ emergency: [Int]) -> [Int] {
	let priority = emergency.sorted(by: >)
	var result = [Int]()
	for e in emergency {
		for i in (0..<priority.count) {
			if e == priority[i] {
				result.append(i+1)
			}
		}
	}
	return result
}
// 다른 사람 풀이
func solution(_ e: [Int]) -> [Int] {
 return e.sorted(by: >).firstIndex(of: $0)! + 1
}
//MARK: - 순서씽의 개수
///1. map
///2. 사칙연산
func solution(_ n: Int) -> Int {
	let numbers = (1...n).map { $0 }
	var result = 0
	for i in numbers {
		if n % i == 0 {
			result += 1
		}
	}
}
