//
//  Day 10.swift
//  PGS-codingtest
//
//  Created by 송성욱 on 1/12/24.
//

import Foundation
//MARK: - 점의 위치 구하기
///1. if-else
///2. 논리, 비교연산자
func solution(_ dot: [Int]) -> Int {
	if dot[0] > 0 && dot[1] > 0 { // 1사분면
		return 1
	} else if dot[0] < 0 && dot[1] > 0 { // 2사분면
		return 2
	} else if dot[0] < 0 && dot[1] < 0 { // 3사분면
		return 3
	}
	return 4
}
// 다른 풀이 switch로도 가능
//MARK: - 2차원으로 만들기
///1. stride(from:, through:. by:)
///2. 배열의 SubSequence
func solution(_ num_list: [Int], _ n: Int) -> [[Int]] {
	var result = [[Int]]()
	for i in stride(from: 0, through: num_list.count - 1, by: n) {
		result.append(Array(num_list[i..<i+n]))
	}
	return result
}
//MARK: - 공 던지기
func solution(_ numbers: [Int], _ k: Int) -> Int {
	var result = -1 // 아래 반복문에서 첫번째로 던지는 번호가 1이 되기 위해 -1로 설정
	for i in 0..<k {
		result += 2 // 공은 옆옆 사람에게 던지기 때문에, 현재 던지는 번호에서 +2를 해주면 다음에 공을 던지는 번호를 구할 수 있음
		if result > numbers.count { // 공을 던져야하는 번호가 최대 번호보다 클 경우 처리하는 부분
			result %= numbers.count
		}
	}
	return result
}
// 다른풀이
func solution(_ numbers: [Int], _ n: Int) -> Int {
	return numbers[((k-1)*2) % numbers.count]
}
//MARK: - 배열 회전시키기
///1. removeLast()
///2. removeFirst()
func solution(_ numbers: [Int], _ direction: String) -> String {
	var nums = numbers
	// 오른쪽 방향으로 한 칸씩 움직이는 경우
	// 맨 오른쪽에(배열의 마지막)에 있던 것이 맨 왼쪽으로(배열의 첫번째) 이동
	// 'removeLast()'를 호출하면 배열의 마지막 요소를 지우고 지운 값을 반환해 줌
	// 배열 연산을 통해 마지막 요소와 마지막 요소를 제한 배열을 더해줌
	if direction == "right" {
		return [num.removeLast()] + nums
	}
	
	// 왼쪽 방향으로 한 칸씩 움직이는 경우
	// 맨 왼쪽(배열의 첫번째)에 있던 것이 맨 오른쪽으로(배열의 마지막) 이동함
	// 'removeFirst()'를 호출하면 배열의 첫번째 요소를 지우고 지운 값을 반환해 줌
	// 배열 연산을 통해 첫번째 요소를 제한 배열과 첫 번쨰 요소를 더해줌
	let first = [nums.removeFirst()]
	return nums + first
}
