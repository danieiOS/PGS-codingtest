//
//  Day 13.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/18/24.
//

import Foundation
//MARK: - 컨트롤 제트
///1. components(separatedBy:)
func solution(_ s: String) -> Int {
	var result = 0
	var previous = 0
	let removeWhiteSpace = s.components(separatedBy: " ")
	removeWhiteSpace.forEach {
		if $0 == "Z" {
			result -= previous
		} else {
			result += Int($0)!
			previous = Int($0)!
		}
	}
	return result
}
//MARK: - 배열 원소의 길이
///1. map
///2. count
func solution(_ strlist: [String]) -> [Int] {
	return strlist.map { $0.count }
}
//MARK: - 중복된 문자 제거
func solution(_ my_string: String) -> String {
	var result = [String]()
	my_string.forEach {
		if result.contains(String($0)) == false {
			result.append(String($0))
		}
	}
	return result.joined(separator: "")
}
//MARK: - 삼각형의 완성조건(1)
///1. sorted
func solution(_ sides: [Int]) -> Int {
	let sortedSides = sides.sorted()
	if sortedSides[0] + sortedSides[1] > sortedSides[2] {
		return 1
	}
	return 2
}

