as yet unclassified
renderCalendarCurrentDate
	^ (WriteStream with: calendar currentDate asDateAndTime dayOfWeekAbbreviation)
		nextPutAll: ', ';
		nextPutAll: calendar currentDate monthAbbreviation;
		nextPutAll: ' ';
		nextPutAll: calendar currentDate dayOfMonth asString;
		contents