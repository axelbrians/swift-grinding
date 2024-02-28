import Foundation

func miniMaxSum(arr: [Int]) -> Void {
	// Write your code here
	
	var max = 0
	var min = Int.max
	
	var sum = 0
	
	for number in arr {
		if max < number {
			max = number
		}
		
		if min > number {
			min = number
		}
		
		sum += number
	}
	
	let maxSum = sum - min
	let minSum = sum - max
	
	print(minSum, maxSum)
}

miniMaxSum(arr: [1, 2, 3, 4, 5])
