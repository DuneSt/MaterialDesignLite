"
A MDLCalendarTest is a test class for testing the behavior of MDLCalendar
"
Class {
	#name : #MDLCalendarTest,
	#superclass : #TestCase,
	#instVars : [
		'calendar'
	],
	#category : 'Material-Design-Lite-Widgets-Tests-Calendar'
}

{ #category : #running }
MDLCalendarTest >> setUp [
	calendar := MDLCalendar new
]

{ #category : #'second week' }
MDLCalendarTest >> testDaysForWeek2Casual [
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	self assert: (calendar daysForWeek: 2) equals: (3 to: 9) asArray
]

{ #category : #international }
MDLCalendarTest >> testDaysForWeek2CasualFrenchFormat [
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	calendar firstDayOfWeekIndex: 2. "Monday"
	self assert: (calendar daysForWeek: 2) equals: (4 to: 10) asArray
]

{ #category : #'second week' }
MDLCalendarTest >> testDaysForWeek2WithFirstDayBeingASaturday [
	calendar currentDate: (Date year: 2016 month: 05 day: 10).
	self assert: (calendar daysForWeek: 2) equals: (1 to: 7) asArray
]

{ #category : #international }
MDLCalendarTest >> testDaysForWeekWithFirstDayBeingAMondayFrenchFormat [
	calendar currentDate: (Date year: 2016 month: 08 day: 10).
	calendar firstDayOfWeekIndex: 2.
	self assert: (calendar daysForWeek: 1) equals: (25 to: 31) asArray
]

{ #category : #'first week' }
MDLCalendarTest >> testDaysForWeekWithFirstDayBeingASaturday [
	calendar currentDate: (Date year: 2016 month: 05 day: 10).
	self assert: (calendar daysForWeek: 1) equals: #(24 25 26 27 28 29 30)
]

{ #category : #'first week' }
MDLCalendarTest >> testDaysForWeekWithFirstDayBeingAWeekday [
	calendar currentDate: (Date year: 2016 month: 04 day: 10).
	self assert: (calendar daysForWeek: 1) equals: #(27 28 29 30 31 1 2)
]

{ #category : #tests }
MDLCalendarTest >> testGoToMonth [
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar goToMonth: 6.
	self assert: calendar currentDate asMonth equals: (Month month: 6 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 6 day: 10)
]

{ #category : #tests }
MDLCalendarTest >> testGoToYear [
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar goToYear: 2017.
	self assert: calendar currentDate year equals: 2017.
	self assert: calendar currentDate equals: (Date year: 2017 month: 4 day: 10)
]

{ #category : #tests }
MDLCalendarTest >> testIntervalAtInitialization [
	self assert: calendar yearsInterval first equals: (Date today addMonths: -4 * 12) year.
	self assert: calendar yearsInterval last equals: (Date today addMonths: 4 * 12) year
]

{ #category : #tests }
MDLCalendarTest >> testIntervalSetCurrentDateModifyInterval [
	calendar currentDate: Date tomorrow.
	self assert: calendar yearsInterval first equals: calendar currentDate year - 4.
	self assert: calendar yearsInterval last equals: calendar currentDate year + 4
]

{ #category : #tests }
MDLCalendarTest >> testNextMonth [
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar nextMonth.
	self assert: calendar currentDate asMonth equals: (Month month: 5 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 5 day: 10)
]

{ #category : #tests }
MDLCalendarTest >> testPreviousMonth [
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar previousMonth.
	self assert: calendar currentDate asMonth equals: (Month month: 3 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 3 day: 10)
]

{ #category : #tests }
MDLCalendarTest >> testPrintDateForHeader [
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: calendar printDateForHeader equals: 'Tue, Jun 5'.
	calendar currentDate: (Date year: 2018 month: 6 day: 4).
	self assert: calendar printDateForHeader equals: 'Mon, Jun 4'.
	calendar currentDate: (Date year: 2018 month: 8 day: 8).
	self assert: calendar printDateForHeader equals: 'Wed, Aug 8'
]
