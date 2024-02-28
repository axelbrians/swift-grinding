import Foundation

func roundGradeScore(grade: Int) -> Int {
	
	if grade < 38 {
		return grade
	}
	
	let remaining = grade % 5
	let multiply = Int(grade / 5)
	
	if remaining == 0 {
		return grade
	}
	
	if remaining > 2 {
		return (multiply * 5) + 5
	} else {
		return grade
	}
}

func gradingStudents(grades: [Int]) -> [Int] {
	// Write your code here
	
	var results = [Int]()
	
	for grade in grades {
		results.append(roundGradeScore(grade: grade))
	}
	
	return results
}

// [73, 67, 38, 33]
gradingStudents(grades: [73, 67, 38, 33])
