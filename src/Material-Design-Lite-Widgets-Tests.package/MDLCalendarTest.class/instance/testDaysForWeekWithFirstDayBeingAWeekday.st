first week
testDaysForWeekWithFirstDayBeingAWeekday
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	self assert: (calendar daysForWeek: 1) equals: #(27 28 29 30 31 1 2)