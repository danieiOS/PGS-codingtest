//
//  Day 6.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/8/24.
//

import Foundation

//MARK: - 문자열 뒤집기
///1. map
///2. reversed()
///3. joined(separator:)
func solution(_ my_string: String) -> String {
	// 문자열 배열로 만들어 뒤집은 뒤, Joined 메서드를 이용해 배열을 합쳐줌
	let result = my_string.map { String($0) }.reversed().joined(separator: "")
	return result
}
//MARK: - 직각삼각형 출력하기
///1. components(separatedBy:)
let n = readLine()!.components(separatedBy: [" "]).map { Int($0) }
for row in (1...n[0]) {
	for _ in (1...row) {
		print("*", terminator: "")
	}
	print()
}
//MARK: - 짝수 홀수 개수
///1. components(separatedBy:)
///2. filter
func solution(_ num_list: [Int]) -> [Int] {
	let even = num_list.filter {
		$0 % 2 == 0
	}
	let odd = num_list.filter {
		$0 % 2 == 1
	}
	return [even.count, odd.count]
}
//MARK: - 문자 반복 출력하기
func solution(_ my_string: String, _ n: Int) -> String {
	var result = String()
	for str in my_string {
		result += (String(repeating: str, count: n))
	}
	return result
}
