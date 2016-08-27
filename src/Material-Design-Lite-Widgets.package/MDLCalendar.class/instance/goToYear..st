accessing
goToYear: aNumber
	currentDate := currentDate addMonths: (aNumber - currentDate year) * 12