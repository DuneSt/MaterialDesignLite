initialization
initialize
	super initialize.
	currentDate := Date today.
	yearsInterval := currentDate year - 4 to: currentDate year + 4.
	firstDayOfWeekIndex := 1