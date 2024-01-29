//
//  Day 15.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/29/24.
//

import Foundation
/// 문자열, 해시, 배열, 수학
//MARK: - 영어가 싫어요
///1. for
///2. contains
func solution(_ numbers: String) -> Int64 {
	let alphabet = ["zero":0, "one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9]
	var result = ""
	var number = ""
	for n in numbers {
		number += String(n)
		if alphabet.keys.contains(number) {
			result += String(alphabet[number]!)
			number = ""
		}
	}
	return Int64(result)!
}
//MARK: - 인덱스 바꾸기
///1. map
///2. joined()
func solution(_ my_string: String, _ num1: Int, _ num2: Int) -> String {
	var str = my_string.map { String($0) }
	let temp = str[num1]
	str[num1] = str[num2]
	str[num2] = temp
	return str.joined()
}
//MARK: - 한 번만 등장한 문자
///1. map
///2. filter
///3. joined(separator:)
///4. sorted()
func solution(_ s: String) -> String {
	var result = [String]()
	let arr = s.map { String($0) }
	let strElement = Set(arr)
	strElement.forEach { element in
		let elements = arr.filter {
			$0 == element
		}
		if elements.count == 1 {
			result.append(element)
		}
	}
	return String(result.joined(separator: "").sorted())
}
//MARK: - 약수 구하기
///1. filter
///2. sorted()
func solution(_ n: Int) -> [Int] {
	return (1...n).filter {
		n % $0 == 0
	}.sorted()
}

