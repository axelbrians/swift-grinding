import Foundation

func plusMinus(arr: [Int]) -> Void {
	// Write your code here
	
	var positive = 0
	var negative = 0
	var zero = 0
	
	for number in arr {
		switch number {
		case _ where number > 0:
			positive += 1
			break
			
		case _ where number < 0:
			negative += 1
			break
			
		default:
			zero += 1
			break
		}
	}
	
	print(String(format: "%.6f", Double(positive) / Double(arr.count)))
	print(String(format: "%.6f", Double(negative) / Double(arr.count)))
	print(String(format: "%.6f", Double(zero) / Double(arr.count)))
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])
