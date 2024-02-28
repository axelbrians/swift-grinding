import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
	// Write your code here
	let size = arr.count
	var leftToRight = 0
	var rightToLeft = 0
	
	
	for row in 0..<size {
		for column in 0..<size {
			if row == column {
				leftToRight += arr[row][column]
			}
			
			let number = abs(column - size + 1)
			
			print("[\(row)][\(column)] -> number: \(number)")
			
			if number == row {
				rightToLeft += arr[row][column]
			}
		}
	}
	
	leftToRight
	rightToLeft
	
	return abs(leftToRight - rightToLeft)
}


diagonalDifference(
	arr: [
		[11, 2, 4],
		[4, 5, 6],
		[10, 8, -12]
	]
)
