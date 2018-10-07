tests
testIsTodayAndNotSelected
	| today tommorow |
	today := Date today.
	tommorow := (DateAndTime today + 1 days) asDate.
	calendar currentDate: today.
	self deny: (calendar isTodayAndNotSelected: today).
	calendar currentDate: tommorow.
	self assert: (calendar isTodayAndNotSelected: today).
	self deny: (calendar isTodayAndNotSelected: tommorow)