private-rendering
renderWeek: aWeek on: html
	aWeek dates do: [ :aDate | self renderDate: aDate on: html ]