//
//  Day 12.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/17/24.
//

import Foundation
//MARK: - 모음 제거
///1. filtter
///2. contains()
func solution(_ my_string: String) -> String {
	let vowels = ["a", "e", "i", "o", "u"]
	let result = my_string.filter { vowels.contains(String($0)) == false }
	return result
}
//MARK: - 문자열 정렬하기(1)
///1. compactMap
///2. sorted()
func solution(_ my_string: String) -> [Int] {
	// Int 형으로 변환할 수 없는 String은 nil값이 되는데 compactMap 은 nil값을 제외한 걸 반환해줌 (숫자만 추출 가능)
	let result = my_string.compactMap { Int(String($0)) }.sorted()
	return result
}
//MARK: - 숨어있는 숫자의 덧셈(1)
///1. filter
///2. isNumber
///3. forEach
func solution(_ my_string: String) -> Int {
	var result = 0
	// my_string에서 숫자인것만 추출하는 과정
	let numbers = my_string.filter { 
		$0.isNumber // isNumber는 숫자면 true, 아니면 false반환
	}
	// 숫자를 더하는 과정
	numbers.forEach {
		result += Int(String($0))!
	}
	return result
}

// 다른 풀이
///1. compactMap
///2. reduce()
func solution(_ my_string: String) -> String {
	return my_string.compactMap { Int(String($0)) }.reduce(0, +)
}
//MARK: - 소인수 분해
///1. 소인수 구하는 법
func solution(_ n: Int) -> [Int] {
	var currentNum = n
	var result = [Int]()
	var count = 2
	
	while currentNum > 1 {
		if currentNum % count == 0 {
			currentNum /= count
			result.append(count)
		} else {
			count += 1
		}
	}
	return Array(Set(result)).sorted()
}
