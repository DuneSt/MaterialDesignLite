printing
printDateForHeader
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: self currentDate asDateAndTime dayOfWeekAbbreviation;
				nextPutAll: ', ';
				nextPutAll: self currentDate monthAbbreviation;
				space;
				print: self currentDate dayOfMonth ]