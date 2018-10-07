tests
testPrintDateForHeader
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: calendar printDateForHeader equals: 'Tue, Jun 5'.
	calendar currentDate: (Date year: 2018 month: 6 day: 4).
	self assert: calendar printDateForHeader equals: 'Mon, Jun 4'.
	calendar currentDate: (Date year: 2018 month: 8 day: 8).
	self assert: calendar printDateForHeader equals: 'Wed, Aug 8'