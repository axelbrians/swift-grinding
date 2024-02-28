import Foundation

func migratoryBirds(arr: [Int]) -> Int {
	// Write your code here
	
	var birdCount: Dictionary<Int, Int> = [:]
	
	
	for bird in arr {
		if let temp = birdCount[bird] {
			birdCount[bird] = temp + 1
		} else {
			birdCount[bird] = 1
		}
	}
	
	var resultKey = Int.max
	var maxCount = 0
	
	for (_, count) in birdCount {
		if count > maxCount {
			maxCount = count
		}
//		print("bird \(key), count is \(count)")
	}
	
	birdCount.filter { (key, count) -> Bool in
		count == maxCount
	}.forEach { (key, _) in
		if key < resultKey {
			resultKey = key
		}
	}
	
//	print("maximum bird count \(maxCount) with type \(resultKey)")
	
	return resultKey
}

migratoryBirds(arr: [1, 4, 4, 4, 5, 3])
migratoryBirds(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])
