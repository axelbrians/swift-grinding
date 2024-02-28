import Foundation

func aVeryBigSum(ar: [Int]) -> Int64 {
	// Write your code here
	var sum: Int64 = 0
	
	for number in ar {
		sum += Int64(number)
	}
	
	return sum
}


let params = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]

aVeryBigSum(ar: params)
