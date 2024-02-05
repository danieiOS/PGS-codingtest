//
//  Day 25.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 2/5/24.
//

import Foundation
//MARK: - 종이 자르기
func solution(_ M: Int, _ N: Int) -> Int {
	return (M * N) - 1
}
//MARK: - 문자열 밀기
///1. joined(separator:)
///2. insert(_:,at:)
///3. removeLast()
///4. map
func solution(_ A: String, _ B: String) -> Int {
	let arr = (A*A).components(separatedBy: B)
	return arr.count == 1 ?  -1 : arr[1].count
}
//다른풀이
func solution(_ A: String, _ B: String) -> Int {
	var arr = A.map { String($0) }
	for i in 0...arr.count-1 {
		if arr.joined(separator: "") == B {
			return i
		}
		let last = String(arr.removeLast())
		arr.insert(last, at: 0)
	}
}
//MARK: - 다음에 올 숫자
///1. 사칙연산
///2. 등비, 등차 수열
func solution(_ common: [Int]) -> Int {
	return common.last! == common.first! + (common[1] - common[0]) * (common.count - 1)
	? common.last! + common[1] - common[0]
	: Int(Double(common.last!) * (Double(common[1]) / Double(common[0])))
}
//다른풀이
func solution(_ common: [Int]) -> Int {
	let d = (common[1] - common[0]) // 공차
	var r = 1 // 공비
	var result = 0
	if common[0] != 0 {
		r = common[1] / common[0]
	}
	if common[1] + d == common[2] {
		result = common[0] + (common.count * d)
	} else {
		result = common[common.count - 1] * r
	}
	return result
}
//MARK: - 연속된 수의 합
///1. map
func solution(_ num: Int, _ total: Int) -> [Int] {
	let a = ((2 * total / num) - num + 1) / 2
	return (a..<a+num).map {$0}
}
