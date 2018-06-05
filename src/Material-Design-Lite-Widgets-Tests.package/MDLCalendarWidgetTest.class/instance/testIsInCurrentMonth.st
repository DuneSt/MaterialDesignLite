tests
testIsInCurrentMonth
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: (calendar isInCurrentMonth: (Date year: 2018 month: 6 day: 5)).
	self deny: (calendar selectedDateIs: (Date year: 2018 month: 7 day: 4))