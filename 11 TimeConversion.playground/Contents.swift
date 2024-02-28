import Foundation

func timeConversion(s: String) -> String {
	// Write your code here
	
	
	let split = s.split(separator: ":", maxSplits: 3)
	
	var hour = Int(split[0])!
	let minute = Int(split[1])!
	let second = Int(split[2].prefix(2))!
	let half = String(split[2].suffix(2))
	
	if half == "PM" {
		if hour == 12 {
			
		} else {
			hour = (hour + 12) % 24
		}
	} else {
		if hour == 12 {
			hour = 0
		}
	}
	
	return String(format: "%02d:%02d:%02d", hour, minute, second)
}


timeConversion(s: "07:05:45PM")
timeConversion(s: "12:01:30PM")
timeConversion(s: "12:07:00AM")
