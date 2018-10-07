computing weeks
daysForWeek: i
	"Return an array of 7 days for the desired week"
	| dayCount  firstWeekday previousDayCount previousMonthDays  lastDayofPreviousWeek |
	i < 1 | (i > 6) ifTrue: [ Error signal: 'Wrong week index' ].
	dayCount := currentDate asMonth daysInMonth .
	firstWeekday := Date firstWeekdayOfMonth: currentDate monthIndex year: currentDate year.
	previousDayCount := currentDate asMonth previous daysInMonth.
	 
	i = 1 ifTrue: [  
		"If this month's first day is the first day in the representation, 
		the first line is the last week from last month"
		firstWeekday = self firstDayOfWeekIndex 
			ifTrue: [ ^ (previousDayCount - 6 to: previousDayCount) asArray].
		
		"Otherwise, its a mix of last month and this month"
		previousMonthDays := (firstWeekday - self firstDayOfWeekIndex to: 1 by: -1) collect: [:each | previousDayCount - each + 1].
		^ previousMonthDays, (1 to: 7 - previousMonthDays size) asArray
	].
		
	"Recompute the last day from the previous line"
	lastDayofPreviousWeek := (self daysForWeek: i - 1) last.
	
	"The first week of this month or the first week of next month 
	begin with the first day of the week "
	((i = 2 and: [ lastDayofPreviousWeek = previousDayCount ]) 
		or: [ lastDayofPreviousWeek = dayCount ])
			ifTrue: [ ^ (1 to: 7) asArray ].

	^ (lastDayofPreviousWeek + 1 to: lastDayofPreviousWeek + 7) collect: 
		[ :each | 
			each <= dayCount
				ifTrue: [ each ]
				ifFalse: [ each - dayCount ] 
		]