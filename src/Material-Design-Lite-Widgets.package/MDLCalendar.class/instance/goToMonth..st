accessing
goToMonth: anIndex
	| oldIndex |
	oldIndex := currentDate monthIndex.
	currentDate := currentDate addMonths: anIndex - oldIndex