private-rendering
renderWeeksOn: html
	calendar currentDate month weeks
		do: [ :aWeek | html tableRow: [ self renderWeek: aWeek on: html ] ]