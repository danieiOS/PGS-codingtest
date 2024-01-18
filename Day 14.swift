//
//  Day 14.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/18/24.
//
// 조건문, 반복문, 시뮬레이션, 문자열
import Foundation
//MARK: - 가까운 수
///1. sorted()
///2. abs() 절대값 구하기
func solution(_ array: [Int], _ n: Int) -> Int {
	let sorted = array.sorted()
	var result = (sorted[0], abs(n-sorted[0]))
	sorted.forEach {
		if abs(n-$0) < result.1 {
			result = ($0, abs(n-$0))
		}
	}
	return result.0
}
//다른 사람 풀이
func solution(_ array: [Int], _ n: Int) -> Int {
	return array.min(by: { (abs($0 - n), $0) < (abs($1 - n), $1) })!
}
//MARK: - 369 게임
///1. filter
///2. contains()
func solution(_ order: Int) -> Int {
	let crap = String(order).filter {
		["3", "6", "9"].contains($0) == true
	}
	return crap.count
}
//MARK: - 암호 해독
///1.map
func solution(_ cipher: String, _ code: Int) -> String {
	let arr = cipher.map { String($0) }
	var result = ""
	for i in 0...cipher.count - 1 {
		if (i + 1) % code == 0 {
			result += arr[i]
		}
	}
	return result
}
//MARK: - 대문자와 소문자
///1. map
///2. lowercased()
///3. uppercased()
func solution(_ my_string: String) -> String {
	let result = my_string.map { str in
		if str.isUppercase == true {
			return str.lowercased()
		}
		return str.uppercased()
	}.joined()
	return result
}
