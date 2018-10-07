tests
testSelectedDateIs
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: (calendar selectedDateIs: (Date year: 2018 month: 6 day: 5)).
	self deny: (calendar selectedDateIs: (Date year: 2018 month: 6 day: 4))