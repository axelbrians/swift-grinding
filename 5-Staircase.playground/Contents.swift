import Foundation

func staircase(n: Int) -> Void {
	// Write your code here
	let range = stride(from: 0, to: n, by: 1)
	
	for row in range {
		for column in range {
			
			// 0,0 0,1 0,2 (0,3)
			// 1,0 1,1 (1,2) (1,3)
			
			let number = n - row - 1
			
			if number > column {
				print(" ", terminator: "")
			} else {
				print("#", terminator: "")
			}
		}
		print("")
	}
	
}

staircase(n: 4)
