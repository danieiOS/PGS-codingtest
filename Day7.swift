//
//  Day7.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/10/24.
//

import Foundation
//MARK: - 특정 문자 제거하기
///1. filter
///2. map
///3. joined()
func solution(_ my_string: String, _ letter: String) -> String {
	 // 문자열을 배열로 바꾼 후 filter 를 이용해 letter가 아닌 것만 추출
	var result = Array(my_string).filter { String($0) != letter }
	// result는 Character 타입 -> String 배열로 바꿔줘야 함
	return result.map { String($0) }.joined()
}
//다른 사람 풀이
//1. String에서도 filter 사용 가능함
func solution(_ my_string: String, _ letter: String) -> String {
	return my_string.filter { String($0) != letter }
}
//2. 정규식 사용
func solution(_ my_string: String, _ letter: String) -> String {
	return try! NSRegularExpression(pattern: letter).stringByReplacingMatches(in: my_string, range: NSMakeRange(0, my_string.count), withTemplate: "")
}
//3. replacingOccurrences 메서드 사용
func solution(_ my_string: String, _ letter: String) -> String {
	return my_string.replacingOccurrences(of: letter, with: "")
}
//MARK: - 각도기
///1. if-else
func solution(_ angle: Int) -> Int {
	if angle < 90 {
		return 1
	} else if angle == 90 {
		return 2
	} else if angle > 180 {
		return 3
	}
	return 4
}
//MARK: - 양꼬치
func solution(_ n: Int, _ k: Int) -> Int {
	///1. 사칙연산
	let service = n / 10
	let cost = (n * 12000) + ((k - service) * 2000)
	return cost
	
}
//MARK: - 짝수의 합
///1. forEach
///2. 사칙연산
func solution(_ n: Int) -> Int {
	var sum = 0
	(0...n).forEach { num in
		if num % 2 == 0 {
			sum += num
		}
	}
	return sum
}
