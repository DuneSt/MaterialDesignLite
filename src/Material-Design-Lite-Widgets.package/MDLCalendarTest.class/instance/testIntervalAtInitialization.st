tests
testIntervalAtInitialization
	self assert: calendar yearsInterval first equals: (Date today addMonths: -4 * 12) year.
	self assert: calendar yearsInterval last equals: (Date today addMonths: 4 * 12) year