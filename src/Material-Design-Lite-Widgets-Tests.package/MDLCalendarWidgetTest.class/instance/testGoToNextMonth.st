tests
testGoToNextMonth
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar goToNextMonth.
	self assert: calendar currentDate asMonth equals: (Month month: 5 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 5 day: 10)