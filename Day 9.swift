//
//  Day 9.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/12/24.
//

import Foundation
//MARK: - 개미 군단
///1. 사칙연산
func solution(_ hp: Int) -> Int {
	var hp = hp
	var result = 0
	result += hp / 5
	hp %= 5
	result += hp / 3
	hp %= 3
	result += hp
	return result
}
//MARK: - 모스 부호(1)
///1. split(separator:)
///2. map
///3. joined()
func solution(_ letter: String) -> String {
	let morse = [
					".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
					"--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
					"--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
					"...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
					"-.--":"y","--..":"z"
					]
	let result = letter.split(separator: " ").map {
		morse[String($0)]!
	}.joined(separator: "")
	return result
}
//MARK: - 가위 바위 보
///1. switch-case
///2. joined()
///3. map
func solution(_ rsp: String) -> String {
	let result = rsp.map { a in
		switch a {
		case "2":
			return "0"
		case "0":
			return "5"
		case "5":
			return "2"
		}
	}.joined()
	return result
}
//MARK: - 구슬을 나누는 경우의 수
///1. round()
///2. 조합
// n! 구해주자
func factorial(_ number: Int) -> Double {
		var result = 1.0
		for i in 1...number {
				result *= Double(i)
		}
		return result
}
func solution(_ balls: Int, _ share: Int) -> Int {
		//balls와 share의 개수가 같다면 경우의 수는 1가지
		if balls == share {
				return 1
		}
		// 조합 공식 사용해서 경우의 수 구하기
		return Int(round(factorial(balls) / (factorial(balls - share) * factorial(share))))
}
