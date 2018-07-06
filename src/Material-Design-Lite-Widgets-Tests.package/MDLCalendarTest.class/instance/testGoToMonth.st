tests
testGoToMonth
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar goToMonth: 6.
	self assert: calendar currentDate asMonth equals: (Month month: 6 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 6 day: 10)