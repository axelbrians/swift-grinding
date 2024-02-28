import Cocoa

func pickingNumbers(a: [Int]) -> Int {
	// Write your code here
	var frequencyDict: Dictionary<Int, Int> = [:]
	
	a.forEach { value in
		let pastValue = frequencyDict[value]
		
		if pastValue != nil {
			frequencyDict[value] = pastValue! + 1
		} else {
			frequencyDict[value] = 1
		}
	}
	
	if frequencyDict.count <= 1 {
		return frequencyDict.values.first ?? 0
	}
	
	var maxSize = 0
	let arrayKeys = Array(frequencyDict.keys).sorted { first, second  in first < second }

	
	for index in 0...(arrayKeys.count - 2) {
		let firstKey = arrayKeys[index]
		let secondKey = arrayKeys[index + 1]
		let first = frequencyDict[firstKey] ?? 0
		let second = frequencyDict[secondKey] ?? 0
		
		if abs(firstKey - secondKey) > 1 {
			if first > maxSize {
				maxSize = first
			}
			
			continue
		}
		
		
		let diff = first + second
		if diff > maxSize {
			maxSize = diff
		}
		
	}
	
	return maxSize
}


let testCase = [
	[4, 6, 5, 3, 3, 1],
	[1,1,2,2,4,4,5,5,5],
	[66, 66, 66]
]

testCase.forEach { test in
	let result = pickingNumbers(a: test)
	print(result)
}


