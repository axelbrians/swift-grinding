import Foundation

func getTotalX(a: [Int], b: [Int]) -> Int {
	// Write your code here
	
	let aMax = a.max() ?? 0
	let bMin = b.min() ?? Int.max
	
	if bMin < aMax {
		return 0
	}
	
	var bFactor = Set<Int>()
	
	for number in b {
		var tempFactor = Set<Int>()
		
		for value in aMax...bMin {
			let remain = number % value
			
			if remain == 0 {
				tempFactor.insert(value)
				
				let other = Int(number / value)
				
				if other < bMin && other > aMax {
					tempFactor.insert(other)
				}
			}
		}
		
		if bFactor.isEmpty {
			bFactor.formUnion(tempFactor)
		} else {
			bFactor.formIntersection(tempFactor)
		}
	}
	
	var consideredNumber = Set<Int>()
	
	for number in bFactor {
		var flag = true
		
		for value in a {
			if number % value != 0 {
				flag = false
				break
			}
		}
		
		if flag {
			consideredNumber.insert(number)
		}
	}
	
	return consideredNumber.count
}


getTotalX(a: [2, 4], b: [16, 32, 96])
getTotalX(a: [3, 4], b: [24, 48])
getTotalX(a: [100, 99, 98, 97], b: [1, 2, 3, 4])
getTotalX(a: [1, 2], b: [12, 14])
getTotalX(a: [1], b: [100])
