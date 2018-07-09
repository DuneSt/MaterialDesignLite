private-rendering
renderWeeksOn: html
	self currentDate asMonth weeks do: [ :aWeek | html tableRow: [ aWeek dates do: [ :aDate | self renderDate: aDate on: html ] ] ]