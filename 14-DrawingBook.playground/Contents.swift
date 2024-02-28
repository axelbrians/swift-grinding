import Foundation

func pageCount(n pageNumber: Int, p pageTarget: Int) -> Int {
	// Write your code here
	

	let page: Int
	var pageTurnCount: Int = 0
	var currentPage: Int = 0
	
	if pageNumber % 2 == 0 {
		page = pageNumber + 1
		currentPage = 1
	} else {
		page = pageNumber
		currentPage = 0
	}
	
	
	let middlePage = Int(ceil(Double(page) / 2.0))
	let isStartFromFront = pageTarget < middlePage
	
	if isStartFromFront {
		pageTurnCount = pageTarget / 2
	} else {
		for index in (0...pageNumber).reversed() {
			currentPage += 1
			
			if index == pageTarget {
				break
			}
			
			if currentPage > 1 {
				pageTurnCount += 1
				currentPage = 0
			}
		}
	}
	
	return pageTurnCount
}

pageCount(n: 5, p: 3)
pageCount(n: 6, p: 2)
pageCount(n: 96993, p: 70030)
pageCount(n: 7, p: 4)
pageCount(n: 6, p: 5)

