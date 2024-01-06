//
//  Day4.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/6/24.
//

import Foundation
//MARK: - 피자 나눠 먹기 (1)
/// 1. 삼항연산자
/// 2. 나머지 %
func solution(_ n: Int) -> Int {
	// 나머지
	let remainder = n % 7 == 0 ? 0 : 1
	return (n / 7) + remainder
}
//MARK: - 피자 나눠 먹기 (2)
///1. 비교 연산자 ==
///2. 나머지 연산자 %
///3. 나눗셈 연산자 /
///4. 병합연산자 ??
///5. filter
///6. contains()
///7.max()
func solution(_ n: Int) -> Int {
	// 나눠 먹는 사람 수가 1인 경우
	if n == 1 {
		return 1
	}
	// 나눠 먹는 사람 수가 6의 배수인 경우
	if n % 6 == 0 {
		return n / 6
	}
	// 그 외 경우
	var sixDivisor = [1, 2, 3, 6]
	var nDivisor = [n]
	// n의 약수 구하는 단계
	for i in 1...(n/2) {
		if n % i == 0 {
			nDivisor.append(i)
		}
	}
	// 6과 n의 최대 공약수 구하는 단계
	let gcd = nDivisor.filter { sixDivisor.contains(%0) }.max() ?? 1
	return n / gcd
}
// 다른 풀이
func solution(_ n: Int) -> Int {
	var answer = 1
	while (answer * 6) % n != 0 {
		answer += 1
	}
	return answer
}
//MARK: - 피자 나눠 먹기 (3)
func solution(_ slice: Int, _ n: Int) {
	let remainder = n % slice == 0 ? 0 : 1
	return n / slice + remainder
}

//MARK: - 배열의 평균값
///1. reduce
///2. 형변환
func solution(_ numbers: [Int]) -> Double {
	return Double(numbers.reduce(0, +)) / Double(numbers.count)
}
