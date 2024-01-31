//
//  Day 18.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/31/24.
//

import Foundation
//MARK: - 문자열안에 문자열
///1. components(separatedBy:)
///2. joined()
///3. contains()
func solution(_ str1: String, _ str2: String) -> Int {
	return str1.contains(str2) ? 1 : 2
}
// 다른 풀이
func solution(_ str1: String, _ str2: String) -> Int {
	let result = str1.components(separatedBy: str2).joined()
	if result != str1 {
		return 1
	}
	return 2
}
//MARK: - 제곱수 판별하기
///1. sqrt
///2. floor
///3. 반복문
///4. 사칙연산
func solution(_ n: Int) -> Int {
	sqrt(Double(n)) == floor(sqrt(Double(n))) ? 1 : 2
}
// 다른 풀이
func solution(_ n: Int) -> Int {
	for num in (2...n/2) {
		if (num*num) == n {
			return 1
		}
	}
	return 2
}
//MARK: - 세균 증식
///1. forEach
func solution(_ n: Int, _ t: Int) -> Int {
	var result = n
	(1...t).forEach { _ in
			result *= 2
	}
	return result
}
//다른 풀이
///2. pow
func solution(_ n: Int, _ t: Int) -> Int {
	n * Int(pow(Float(2), Float(t)))
}
//MARK: - 문자열 정렬하기(2)
func solution(_ my_string: String) -> String {
	let result = my_string.map {
		$0.lowercased()
	}.sorted(by: <)
	return result.joined()
}
