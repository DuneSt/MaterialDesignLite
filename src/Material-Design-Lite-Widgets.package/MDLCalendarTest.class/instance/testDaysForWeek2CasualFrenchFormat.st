international
testDaysForWeek2CasualFrenchFormat
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	calendar firstDayOfWeekIndex: 2. "Monday"
	self assert: (calendar daysForWeek: 2) equals: (4 to: 10) asArray