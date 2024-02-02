//
//  Day 22.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 2/2/24.
//

import Foundation
//dp, 수학, 조건문, 배열
//MARK: - 저주의 숫자 3
///1. 반복문
///2. 논리연산자
///3. contains()
func solution(_ n: Int) -> Int {
	var result = 0
	for _ in 1...n {
		result += 1
		while (result % 3 == 0) || (String(result).contains("3") == true) {
			result += 1
		}
	}
	return result
}
//MARK: - 평행
///1. abs()
///2. 사칙연산자
///3. 기울기 공식
func solution(_ dots: [[Int]]) -> Int {
	var x1 = abs(dots[0][0] - dots[1][0])
	var y1 = abs(dots[0][1] - dots[1][1])
	var x2 = abs(dots[2][0] - dots[3][0])
	var y2 = abs(dots[2][1] - dots[3][1])
	if Double(y1) / Double(x1) == Double(y2) / Double(x2) {
		return 1
	}
	x1 = abs(dots[0][0] - dots[2][0])
	y1 = abs(dots[0][1] - dots[2][1])
	x2 = abs(dots[1][0] - dots[3][0])
	y2 = abs(dots[1][1] - dots[3][1])
	if Double(y1) / Double(x1) == Double(y2) / Double(x2) {
		return 1
	}
	x1 = abs(dots[0][0] - dots[3][0])
	y1 = abs(dots[0][1] - dots[3][1])
	x2 = abs(dots[1][0] - dots[2][0])
	y2 = abs(dots[1][1] - dots[2][1])
	if Double(y1) / Double(x1) == Double(y2) / Double(x2) {
		return 1
	}
	return 0
}
//MARK: - 겹치는 선분의 길이
///1. 반복문
///2. 논리연산자
///3. 삼항연산자
func makelineArr(s: Int, e: Int) -> Int {
	var result = [Int]()
	for i in s...e {
		result.append(i)
	}
	return result
}
func getOverlap(a: [Int], b: [Int]) -> [Int] {
	var result = [Int]()
	var isOn = false
	let less = (a.count >= b.count) ? b : a
	let more = (a.count >= b.count) ? a : b
	for i in 0..<less.count {
		for j in 0..<more.count {
			if less[i] == more[j] && (isOn == false) {
				isOn = true
			} else if less[i] == more[j] && (isOn == true) {
				result.append(less[i])
			}
		}
	}
	return result
}
func solution(_ lines: [[Int]]) -> Int {
	var result = [Int]()
	let line1 = makelineArr(s: lines[0][0], e: lines[0][1])
	let line2 = makelineArr(s: lines[1][0], e: lines[1][1])
	let line3 = makelineArr(s: lines[2][0], e: lines[2][1])
	result += getOverlap(a: line1, b: line2)
	result += getOverlap(a: line1, b: line3)
	result += getOverlap(a: line2, b: line3)
	result = Array(Set(result)).sorted()
	return result.count
}
//MARK: - 유한소수 판별하기
///1. 형변환
///2. 삼항연산자
///3. 유한소수 특징
func solution(_ a: Int, b: Int) -> Int {
	return String((Double(a) / Double(b))).count < 16 ? 1 : 2
}
