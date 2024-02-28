import Foundation

func birthday(s chocolateBar: [Int], d day: Int, m month: Int) -> Int {
	// Write your code here
		
	var possibleWay = 0
	
	
	for index in 0...(chocolateBar.count - month) {
		var subSum = 0
		for subIndex in index..<(index + month) {
//			print("\(subIndex) ", terminator: "")
			subSum += chocolateBar[subIndex]
		}
		if subSum == day {
			possibleWay += 1
		}
//		print("")
	}
	
	return possibleWay
}

birthday(s: [1, 2, 1, 3, 2], d: 3, m: 2)
birthday(s: [1, 2, 3, 1, 2, 3, 1, 2, 3], d: 3, m: 3)
birthday(s: [1, 1, 1, 1, 1, 1], d: 3, m: 2)
birthday(s: [4], d: 4, m: 1)
