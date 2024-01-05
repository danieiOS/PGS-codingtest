//
//  Day3.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/5/24.
//

import Foundation

//MARK: - 나머지 구하기
func solution(_ num1:Int, _ num2:Int) -> Int {
		return num1 % num2
}

//MARK: - 중앙값 구하기
/// 1. sorted()
/// 2. count
func solution(_ array:[Int]) -> Int {
		let result = array.sorted()
		
		return result[result.count / 2]
}

//MARK: - 최빈값 구하기
///1. 사전타입의 key, value(s)
///2. max()
///3. 삼항연산자
func solution(_ array:[Int]) -> Int {
		var dic = [Int: Int]() // [숫자: 나온 횟수]
		var count = 0 // 최빈값이 몇개 인지 확인하는 변수
		var result = 0
		
		// array 안에 든 숫자가 몇번 나왔는지 확인하는 단계
		for i in array {
				if var value = dic[i] {
						value += 1
						dic[i] = value
				} else {
						dic[i] = 1
				}
		}
		
		// dic 안에 든 숫자 (key)중 어떤 값(value)이 가장 큰지 확인하는 단계
		for i in dic {
				if i.value == dic.values.max()! {
						count += 1
						result = i.key
				}
		}
		
		return count > 1 ? -1 : result
}

//MARK: - 짝수는 싫어요
///1. filter(고차함수)
func solution(_ array:[Int]) -> Int {
		var dic = [Int: Int]() // [숫자: 나온 횟수]
		var count = 0 // 최빈값이 몇개 인지 확인하는 변수
		var result = 0
		
		// array 안에 든 숫자가 몇번 나왔는지 확인하는 단계
		for i in array {
				if var value = dic[i] {
						value += 1
						dic[i] = value
				} else {
						dic[i] = 1
				}
		}
		
		// dic 안에 든 숫자 (key)중 어떤 값(value)이 가장 큰지 확인하는 단계
		for i in dic {
				if i.value == dic.values.max()! {
						count += 1
						result = i.key
				}
		}
		
		return count > 1 ? -1 : result
}
