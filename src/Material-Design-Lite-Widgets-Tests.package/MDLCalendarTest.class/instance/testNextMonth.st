tests
testNextMonth
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar nextMonth.
	self assert: calendar currentDate month equals: (Month month: 5 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 5 day: 10)