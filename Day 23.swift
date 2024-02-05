//
//  Day 23.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 2/5/24.
//

import Foundation
// 배열,  정렬, 문자열
//MARK: - 특이한 정렬
///1. 반복문
///2. 논리연산자
func solution(_ numlist: [Int], _ n: Int) -> [Int] {
	var nums = numlist.map { [abs(n-$0), $0] }
	for i in 0..<nums.count-1 {
		for j in i+1..<nums.count {
			if (nums[i][0] > nums[j][0]) || (nums[i][0] == nums[j][0] && nums[i][1] < nums[j][1]) {
				let temp = nums[i]
				nums[i] = nums[j]
				nums[j] = temp
			}
		}
	}
	return nums.map { $0[1] }
}
//다른풀이
func solution(_ numlist: [Int], _ n: Int) -> [Int] {
	return numlist.sorted(by: { (abs($0-n), -$0) < (abs($1-n), -$1) })
}
//MARK: - 등수 매기기
///1. compactMap
///2. contains()
func solution(_ score: [[Int]]) -> [Int] {
	var answer: [Int] = []
	let total = score.map { $0.reduce(0,+) }
	for tmp in total {
		answer.append(total.filter { $0 > tmp }.count + 1)
	}
	return answer
}
//MARK: - 옹알이(1)
///1. reduce
///2. components(separatedBy:)
///3. trimmingCharacters
func solution(_ babbling: [String]) -> Int {
	let pronunciations = ["aya", "ye", "woo", "ma"]
	var count = 0
	babbling.forEach { word in
		let result = pronunciations.reduce(word) { partialResult, pronunciation in
			partialResult.components(separatedBy: pronunciaton).joined(separator: " ")
		}
		if result.trimmingCharacter(in: .whitespaces) == "" {
			count += 1
		}
	}
	return count
}
//MARK: - 로그인 성공?
///1, 반복문
///2. 논리 연산자
func solution(_ id_pw: [String], _ db: [[String]]) -> String {
	for i in db {
		if id_pw[0] == i[0] && id_pw[1] == i[1] {
			return "login"
		} else if id_pw[0] == i[0] {
			return "wrong pw"
		}
	}
	return "fail"
}
//다른풀이
func solution(_ id_pw: [String], _ db: [[String]]) -> String {
	return db.contains(id_pw) ? "login" : db.map {$0[0]}.contains(id_pw[0]) ? "wrong pw" : "fail"
}
