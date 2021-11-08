"
firstDayOfWeekIndex is the index of the first day of the week in the representation, 7 being saturday and 1 sunday
"
Class {
	#name : #MDLCalendar,
	#superclass : #Object,
	#instVars : [
		'currentDate',
		'firstDayOfWeekIndex',
		'yearsInterval'
	],
	#category : 'Material-Design-Lite-Widgets-Calendar'
}

{ #category : #accessing }
MDLCalendar >> currentDate [
	^ currentDate
]

{ #category : #accessing }
MDLCalendar >> currentDate: anObject [
	yearsInterval := anObject year - 4 to: anObject year + 4.
	currentDate := anObject
]

{ #category : #'computing weeks' }
MDLCalendar >> daysForWeek: i [
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
]

{ #category : #accessing }
MDLCalendar >> firstDayOfWeekIndex [
	^ firstDayOfWeekIndex
]

{ #category : #accessing }
MDLCalendar >> firstDayOfWeekIndex: anInteger [
	firstDayOfWeekIndex := anInteger
]

{ #category : #accessing }
MDLCalendar >> goToMonth: anIndex [
	| oldIndex |
	oldIndex := currentDate monthIndex.
	self currentDate: (currentDate addMonths: anIndex - oldIndex)
]

{ #category : #accessing }
MDLCalendar >> goToYear: aNumber [
	self currentDate: (currentDate addMonths: (aNumber - currentDate year) * 12)
]

{ #category : #initialization }
MDLCalendar >> initialize [
	super initialize.
	self currentDate: Date today.
	self firstDayOfWeekIndex: 1
]

{ #category : #printing }
MDLCalendar >> printDateForHeader [
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: self currentDate asDateAndTime dayOfWeekAbbreviation;
				nextPutAll: ', ';
				nextPutAll: self currentDate monthAbbreviation;
				space;
				print: self currentDate dayOfMonth ]
]

{ #category : #accessing }
MDLCalendar >> selectNextMonth [
	currentDate := currentDate onNextMonth
]

{ #category : #accessing }
MDLCalendar >> selectNextYears [
	yearsInterval := yearsInterval + 9
]

{ #category : #accessing }
MDLCalendar >> selectPreviousMonth [
	currentDate := currentDate onPreviousMonth
]

{ #category : #accessing }
MDLCalendar >> selectPreviousYears [
	yearsInterval := yearsInterval - 9
]

{ #category : #accessing }
MDLCalendar >> yearsInterval [
	"This will be removed. In the calendar we let the user select the year by displaying year 9 by 9. 4 before the current year, 4 after the current year by default.
	
	I think this should not be the responsibility of the MDLCalendar but of the MDLCalendarWidget? See https://github.com/DuneSt/MaterialDesignLite/issues/178"
	
	^ yearsInterval
]
