second week
testDaysForWeek2Casual
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	self assert: (calendar daysForWeek: 2) equals: (3 to: 9) asArray