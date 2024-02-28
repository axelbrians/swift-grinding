import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
	// Write your code here
	
	let appleTree = a
	let orangeTree = b
	let houseRange = s...t

	var applesFallLocation = [Int]()
	var orangesFallLocation = [Int]()

	for apple in apples {
		applesFallLocation.append(apple + appleTree)
	}
	
	for orange in oranges {
		orangesFallLocation.append(orange + orangeTree)
	}
	
	
	var appleCount = 0
	var orangeCount = 0
	
	for apple in applesFallLocation {
		if houseRange.contains(apple) {
			appleCount += 1
		}
	}
	
	for orange in orangesFallLocation {
		if houseRange.contains(orange) {
			orangeCount += 1
		}
	}
	
	print(appleCount)
	print(orangeCount)
}


countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])
