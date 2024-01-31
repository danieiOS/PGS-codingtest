//
//  Day 17.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/30/24.
//

import Foundation
//MARK: - 숫자 찾기
///1. map
///2. contains
func solution(_ num: Int, _ k: Int) -> Int {
	let nums = String(num).map { String($0) }
	if nums.contains(String(k)) == false {
		return -1
	}
	for i in 0..<nums.count {
		if nums[i] == String(k) {
			return i+1
		}
	}
	return -1
}
//MARK: - n의 배수 고르기
///1. filter
func solution(_ n: Int, _ numlist: [Int]) -> [Int] {
	return numlist.filter { $0 % n == 0 }
}
//MARK: - 자릿수 더하기
///1. map
///2. reduce
func solution(_ n: Int) -> Int {
	return String(n).map { Int(String($0))! }.reduce(0, +)
}
//MARK: - OX퀴즈
//문자열, 수학, 조건문, 배열, 사칙연산
///1. split(separator:)
func solution(_ quiz: [String]) -> [String] {
	var answer: [String] = []
	for q in quiz {
		let qArray = 
		q
			.trimmingCharacter(in: .whitespaces)
			.components(separatedBy: " ")
			.map { String($0) }
		let x = Int(qArray[0])!
		let op = qArray[1]
		let y = Int(qArray[2])!
		let z = Int(qArray[4])!
		let result = op == "+" ? x + y : x - y
		answer.append(result == z ? "O" : "X")
	}
	
	return answer
}
//다른 풀이
func solution(_ quiz: [String]) -> [String] {
	return quiz.map {
		var value = 0
		let splited = $0.split(separator: " ")
		if String(splited[1]) == "+" {
			value = Int(String(splited[0]))! + Int(String(splited[2]))!
		} else {
			value = Int(String(splited[0]))! - Int(String(splited[2]))!
		}
		if value == Int(String(splited[4]))! {
			return "O"
		} else {
			return "X"
		}
	}
}
