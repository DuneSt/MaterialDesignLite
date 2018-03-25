private-rendering
renderWeeksOn: html
	calendar currentDate month weeks
		do: [ :aWeek | html tableRow: [ aWeek dates do: [ :aDate | self renderDate: aDate on: html ] ] ]