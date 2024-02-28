import Foundation


func simpleArrayAddition(array: [Int]) -> Int {
	var sum = 0
	
	for number in array {
		sum += number
	}
	
	return sum
}


let param = [1, 2, 3, 4, 10, 11]

simpleArrayAddition(array: param)
