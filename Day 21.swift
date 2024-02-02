//
//  Day 21.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 2/2/24.
//

import Foundation
//문자열, 사칙연산, 시뮬레이션, 2차원배열, 수학, 배열
//MARK: - 숨어잇는 숫자의 덧셈(2)
///1. isNumber
///2. joined(seaprator:)
///3. split(separator:)
func solution(_ my_string: String) -> Int {
	var result = 0
	/*
	 연속된 숫자를 판별하기 위해 문자는 공백(" ")으로 처리한 후 없앰
	 ex) "aAb1B2cC34oOp"
	 -> 문자 공백 처리 : [" ", " ", " ", "1", " ", "2", " ", " ", "3", "4", " ", " ", " "]
	 -> 배열에서 문자열로 만들기 : "  1 2 34  " (joined 과정안하면 splited 할때 문자열이 아닌 ArraySlice 타입이 됨)
	 -> 공백으로 잘라줌 : ["1", "2", "34"]
	 */
	let numbers = my_string.map { s -> String in
		if s.isNumber {
			return String(s)
		}
		return " "
	}.joined(separator: "").split(separator: " ")
	numbers.forEach {
		result += Int($0)!
	}
	return result
}
//MARK: - 안전지대
///1. 2차배열
///2. 논리연산자
func solution(_ board: [[Int]]) -> Int {
	var tempBoard = board
	for i in 0..<board.count {
		for j in 0..<board.count {
			if board[i][j] == 1 {
				for m in -1...1 {
					for n in -1...1 {
						if i+m >= 0 && i+m < board.count && j+n >= 0 && j+n < board.count {
							if tempBoard[i+m][j+n] == 0 {
								tempBoard[i+m][j+n] = 2
							}
						}
					}
				}
			}
		}
	}
	print(tempBoard)
	return tempBoard.joined().filter { $0 == 0 }.count
}
//MARK: - 삼각형의 완성 조건(2)
///1. max()
///2. min()
func solution(_ sides: [Int]) -> Int {
	var result = 0
	//가장 긴 변이 sides안에 있는 경우
	for _ in (sides.max()! - sides.min()! + 1)..<(sides.max()!) {
		result += 1
	}
	for _ in (sides.max()!)..<(sides.max()! + sides.min()!) {
		result += 1
	}
	return result
}
//MARK: - 외계어 사전
///1. filter
///2. contains()
///3. sorted()
///4. joined(separator:)
func solution(_ spell: [String], _ dic: [String]) -> Int {
	for word in dic {
		let temp = spell.filter {
			word.contains($0)
		}
		if temp.sorted().joined(separator: "") == spell.sorted().joined(separator: "") {
			return 1
		}
	}
	return 2
}
