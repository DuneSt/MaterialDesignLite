accessing
goToYear: aNumber
	self currentDate: (currentDate addMonths: (aNumber - currentDate year) * 12)