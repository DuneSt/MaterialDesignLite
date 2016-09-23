accessing
goToMonth: anIndex
	| oldIndex |
	oldIndex := currentDate monthIndex.
	self currentDate: (currentDate addMonths: anIndex - oldIndex)