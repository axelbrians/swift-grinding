import Foundation

func dayOfProgrammer(year: Int) -> String {
	// Write your code here
	
	var date = ""
	
	switch year {
	case 1700...1917:
		let day = getDay(year: year, calendarSystem: .julian)
		date = constructString(day: day, year: year)
		break
		
	case 1918:
		date = constructString(day: 26, year: year)
		break
		
	case 1919...:
		let day = getDay(year: year, calendarSystem: .gregorian)
		date = constructString(day: day, year: year)
		break
		
	default:
		date = "10.1.2001"
	}
	
	return date
}

enum CalendarSystem {
	case julian
	case gregorian
}

func constructString(day: Int, year: Int) -> String {
	return String(format: "%.2d.%.2d.%d", day, 9, year)
}

func getDay(
	year: Int,
	calendarSystem: CalendarSystem
) -> Int {
	if isLeapYear(year: year, calendarSystem: calendarSystem) {
		return 12
	} else {
		return 13
	}
}

func isLeapYear(
	year: Int,
	calendarSystem: CalendarSystem = .gregorian
) -> Bool {
	switch calendarSystem {
	case .gregorian:
		if year % 400 == 0 {
			return true
		} else {
			return (year % 4 == 0) && (year % 100 != 0)			
		}

	case .julian:
		return (year % 4) == 0
	}
}

//dayOfProgrammer(year: 2017)
//dayOfProgrammer(year: 1800)
//dayOfProgrammer(year: 1984)
//dayOfProgrammer(year: 1918)
//dayOfProgrammer(year: 1917)
dayOfProgrammer(year: 2000)
