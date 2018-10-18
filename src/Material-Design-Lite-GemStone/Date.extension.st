Extension { #name : #Date }

{ #category : #'*Material-Design-Lite-GemStone' }
Date class >> firstWeekdayOfMonth: month year: year [
	"Answer the weekday index of the first day in <month> in the <year>."

	^ (self year: year month: month day: 1) weekdayIndex

]

{ #category : #'*Material-Design-Lite-GemStone' }
Date >> monthAbbreviation [
	^ self monthName copyFrom: 1 to: 3
]

{ #category : #'*Material-Design-Lite-GemStone' }
Date class >> monthNames [
	"Return a collection of month names"
	
	^ MonthNames copy value
]
