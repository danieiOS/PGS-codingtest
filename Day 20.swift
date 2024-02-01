//
//  Day 20.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 2/1/24.
//

import Foundation
//수학, 시뮬레이션, 문자열, 사칙연산
//MARK: - 직사각형 넓이 구하기
func solution(_ dots: [[Int]]) -> Int {
	let dots = dots.sorted(by: { ($0[0], $0[1]) < ($1[0], $1[1]) })
	return (dots.last![0] - dots.first![0] * dots.last![1] - dots.first![1])
}
//다른 풀이
///1. 좌표평면 읽는 법
func solution(_ dots[[Int]]) -> Int {
	let dot = dots[0] //기준점
	var width = 0 //가로
	var height = 0 //세로
	for i in (0..<dots.count) {
		//기준점과 x좌표가 같은 점을 찾아서 높이를 구함
		if dot[0] == dots[i][0] {
			height = abs(dot[1] - dots[i][1])
		}
		//기준점과 y좌포가 같은 점을 찾아서 가로를 구함
		if dot[1] == dots[i][1] {
			width = abs(dot[0] - dots[i][0])
		}
	}
	return width * height
}
//MARK: - 캐릭터의 좌표
///1. if-else
///2. 논리연산자
func solution(_ keyinput: [String], _ board: [Int]) -> [Int] {
	var result = [0, 0]
	for i in keyinput {
		if i == "left" && (result[0] > ((board[0]/2) * -1)) {
			result[0] -= 1
		} else if i == "right" && (result[0] < board[0]/2) {
			result[0] += 1
		} else if i == "down" && (result[1] > ((board[1]/2) * -1)) {
			result[1] -= 1
		} else if i == "up" && (result[1] < board[1]/2) {
			result[1] += 1
		}
	}
	return result
}
//MARK: - 최댓값 만들기(2)
///1. sorted()
///2. reverse()
///3. max()
func solution(_ numbers: [Int]) -> Int {
	//음수가 있을 경우를 대비해, 음수 중 가장 작은 값(절대값이 가장 큰) 2개를 곱함
	var nums = numbers.sorted()
	let n1 = nums[0] * nums[1]
	nums.reverse()
	//양수 중 가장 큰 값 2개를 곱함
	let n2 = nums[0] * nums[1]
	//음수의 곱셈과 양수의 곱셈 중 큰 값을 반환
	return max(n1, n2)
}
//다른 풀이
func solution(_ numbers: [Int]) -> Int {
	var numbers = numbers.sorted()
	return max(numbers[0] * numbers[1], numbers[numbers.count - 1] * numbers[numbers.count - 2])
}
//MARK: - 다항식 더하기
///1. filter
///2. contains()
func solution(_ polynomial: String) -> String {
	var num = 0
	var xNum = 0
	let str = polynomial.components(separatedBy: " + ")
	// x의 개수를 더해주는 과정
	str.filter {
		$0.contains("x")
	}.forEach {
		if $0.count > 1 {
			// '(숫자)x' 는 count가 1보다 크다, 그러므로 x를 제외한 숫자만 추출하여 더함
			xNum += Int(Array($0.map { String($0)}[0..<$0.count-1]).joined())!
		} else {
			// 'x'는 count 가 1이고, 1이 생략된 형태이므로 그냥 1을 더함
			xNum += 1
		}
	}
	// 상수항을 더해주는 과정
	str.filter {
		!$0.contains("x")
	}.forEach {
		num += Int($0)
	}
	//경우의 수에 따른 수식을 반환함
	if xNum == 0 {
		//일차항이 없고 상수항만 있는 경우
		return "₩(num)"
	} else if num == 0 {
		//상수항이 없고 일차항의 계수가 1인 경우
		if xNum == 1 {
			return "x"
		}
		//상수항이 없고 일차항의 계수가 1보다 큰 경우
		return "₩(xNum)x"
	} else {
		//상수항이 있고 일차항의 계수가 1인 경우
		if xNum == 1 {
			return "x + ₩(num)"
		}
		// 상수항이 있고 일차항의 개수가 1보다 큰 경우
		return "₩(xNum)x + ₩(num)"
	}
}
