testing
isTodayAndNotSelected: aDate
	^ aDate = Date today and: [ aDate ~= self currentDate ]