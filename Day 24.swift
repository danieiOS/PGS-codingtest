//
//  Day 24.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 2/5/24.
//

import Foundation
//수학, 시뮬레이션, 문자열, 조건문, 반복문
//MARK: - 치킨 쿠폰
///1. 반복문
///2. 조건문
func solution(_ chicken: Int) -> Int {
	var remainder = 0
	var ordableChicken = chicken
	var result = 0
	while ordableChicken > 0 {
		remainder += (ordableChicken % 10)
		ordableChicken /= 10
		result += ordableChicken
	}
	ordableChicken = remainder
	remainder = 0
	while ordableChicken > 0 {
		remainder += (ordableChicken % 10)
		ordableChicken /= 10
		result += ordableChicken
	}
	if (remainder / 10) > 0 {
		result += (remainder / 10)
	}
	return result
}
//다른풀이
func solution(_ chicken: Int) -> Int {
	var chicken = chicken
	var service = 0
	var coupon = 0
	while chicken != 0 {
		coupon += chicken
		service += coupon / 10
		chicken = coupon / 10
		coupon %= 10
	}
	return service
}
//MARK: - 이진수 더하기
///1. init(_:radix:) -> 진수변환
func solution(_ bin1: String, _ bin2: String) -> String {
	let num = (Int(bin1, radix: 2) ?? 0) + (Int(bin2, radix: 2) ?? 0)
	return String(num, radix: 2)
}
//MARK: - A로 B 만들기
///1. map
///2. sorted()
func solution(_ before: String, _. _ after: String) -> Int {
	let sortedBefore = before.map { String($0) }.sorted()
	let sortedAfter = after.map { String($0) }.sorted()
	return sortedBefore == sortedAfter ? 1 : 0
}
//MARK: - k의 개수
///1. 반복문
///2. filter
func solution(_ i: Int, _ j: Int, _ k: Int) -> Int {
	var str = ""
	for i in (i...j) {
		str += String(i)
	}
	let result = str.filter {
		String($0) == String(k)
	}
	return result.count
}
