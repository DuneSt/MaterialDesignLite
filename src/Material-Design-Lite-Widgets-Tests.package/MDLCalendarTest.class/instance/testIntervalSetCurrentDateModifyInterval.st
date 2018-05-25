tests
testIntervalSetCurrentDateModifyInterval
	calendar currentDate: Date tomorrow.
	self assert: calendar yearsInterval first equals: calendar currentDate year - 4.
	self assert: calendar yearsInterval last equals: calendar currentDate year + 4