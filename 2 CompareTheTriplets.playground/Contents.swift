import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
	var alice = 0
	var bob = 0
	
	for index in 0..<3 {
		if a[index] > b[index] {
			alice += 1
		} else if a[index] < b[index] {
			bob += 1
		}
	}
	
	
	return [alice, bob]
}


let alice = [5, 6, 7]
let bob = [3, 6, 7]

compareTriplets(a: alice, b: bob)
