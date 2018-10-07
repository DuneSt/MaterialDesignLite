tests
testGoToYear
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar goToYear: 2017.
	self assert: calendar currentDate year equals: 2017.
	self assert: calendar currentDate equals: (Date year: 2017 month: 4 day: 10)