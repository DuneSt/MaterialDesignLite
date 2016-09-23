international
testDaysForWeekWithFirstDayBeingAMondayFrenchFormat
	calendar currentDate: (Date year: 2016 month: 08 day: 10).
	calendar firstDayOfWeekIndex: 2.
	self assert: (calendar daysForWeek: 1) equals: (25 to: 31) asArray