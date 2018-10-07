second week
testDaysForWeek2WithFirstDayBeingASaturday
	calendar currentDate: (Date year: 2016 month: 05 day: 10).
	self assert: (calendar daysForWeek: 2) equals: (1 to: 7) asArray