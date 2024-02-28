import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
	// Write your code here
	var map: Dictionary<Int, Int> = [:]
	
	for candle in candles {
		if let old = map[candle] {
			map[candle] = old + 1
		} else {
			map[candle] = 1
		}
	}
	
	var maxCount = 0
	
	for (_, count) in map {
		if maxCount < count {
			maxCount = count
		}
	}
	
	return maxCount
}


birthdayCakeCandles(candles: [3, 2, 1, 3])
