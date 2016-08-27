first week
testDaysForWeekWithFirstDayBeingASaturday
	calendar currentDate: (Date year: 2016 month: 05 day: 10).
	self assert: (calendar daysForWeek: 1) equals: #(24 25 26 27 28 29 30)