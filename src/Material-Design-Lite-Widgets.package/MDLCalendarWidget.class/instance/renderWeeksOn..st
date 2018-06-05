private-rendering
renderWeeksOn: html
	self currentDate month weeks do: [ :aWeek | html tableRow: [ aWeek dates do: [ :aDate | self renderDate: aDate on: html ] ] ]