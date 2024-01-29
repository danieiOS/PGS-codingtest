//
//  Day 16.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/29/24.
//

import Foundation
///문자열, 수학, 배열, 조건문
//MARK: - 편지
///1, Array()
func solution(_ message: String) -> Int {
	// 문자의 개수를 2배
	return Array(message).count * 2
}
//MARK: - 가장 큰 수 찾기
func solution(_ array: [Int]) -> [Int] {
	// 제일 큰 수, 몇번째 인지?
	return [array.max()!, array.firstIndex(of: array.max()!)!]
}
//MARK: - 문자열 계산하기
///1. stride(from:, to:, by:)
func solution(_ my_string: String) -> Int {
	let splited = my_string.split(separator: " ")
	var result = Int(String(splited[0]))!
	for i in stride(from: 1, to: splited.count - 1, by: 2) {
		if splited[i] == "+" {
			result += Int(String(splited[i+1]))!
		} else {
			result -= Int(String(splited[i+1]))!
		}
	}
	return result
}
//MARK: - 배열의 유사도
///1. intersection() 교집합
func solution(_ s1: [String], _ s2: [String]) -> Int {
	return Set(s1).intersetcion(s2).count
}
