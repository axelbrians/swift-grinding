import Cocoa

let magicNumber = 15

func formingMagicSquare(s: [[Int]]) -> Int {
	// Write your code here
	
	checkRow(s: s, index: 2)
	checkColumn(s: s, index: 0)
	
	
	return 0
}

func checkRow(s: [[Int]], index: Int) -> Bool {
	var sum = 0
	
	for number in s[index] {
		sum += number
	}
	
	return sum == magicNumber
}

func checkColumn(s: [[Int]], index: Int) -> Bool {
	var sum = 0
	
	for row in s {
		sum += row[index]
	}
	
	return sum == magicNumber
}

func checkDiagonal(s: [[Int]], row: Int, column: Int) -> Bool {
	if
		(row == 0 || row == 2) && column == 1,
		row == 1 && (column == 0 || column == 2) 
	{
		return true
	}
	
	return 10 == magicNumber
}




formingMagicSquare(
	s: [
		[5, 3, 4],
		[1, 5, 8],
		[6, 7, 2]
	]
)

//formingMagicSquare(
//	s: [
//		[4, 9, 2],
//		[3, 5, 7],
//		[8, 1, 5]
//	]
//)
