//
//  Day 19.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 2/1/24.
//

import Foundation
// 문자열, 배열, 조건문
//MARK: - 7의 개수
///1. map
///2. filter
func solution(_ array: [Int]) -> Int {
	let result = array.map { String($0) }.joined().filter { String($0) == "7" }
	return result.count
}
//MARK: - 잘라서 배열로 저장하기
///1. map
///2. joined(separator:)
///3. 사칙연산
///4. ArraySlice
func solution(_ my_str: String, _ n: Int) -> [String] {
	var result = [String]()
	let arr = my_str.map { String($0) }
	let quotient = my_str.count / n
	for i in 0..<quotient {
		result.append((arr[(n*i)..<n*(i+1)]).joined(separator: ""))
	}
	if (quotient*n) < my_str.count {
		result.append(arr[(quotient*n)...].joined(separator:""))
	}
	return result
}
//MARK: - 중복된 숫자 개수
///1. filter
func solution(_ array: [Int], _ n: Int) -> Int {
	return array.filter {
		$0 == n
	}.count
}
//MARK: - 머쓱이보다 키 큰 사람
///1. filter
func solution(_ array: [Int], _ height: Int) -> Int {
	return array.filter { $0 > height }.count
}
//다른 풀이
///2.sort()
func solution(_ array: [Int], _ height: Int) -> Int {
	var allHeight = array + [height]
	allHeight.sort()
	guard let meossgNum = allHeight.lastIndex(of: height) else {
		return 0
	}
	let result = array.count - meossgNum
	return result
}
