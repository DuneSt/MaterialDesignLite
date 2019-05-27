Class {
	#name : #MDLDatePickerTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#instVars : [
		'calendar'
	],
	#category : #'Material-Design-Lite-Widgets-Tests-Calendar'
}

{ #category : #running }
MDLDatePickerTest >> setUp [
	super setUp.
	calendar := MDLDatePicker new
]

{ #category : #tests }
MDLDatePickerTest >> testDisplayDateOn [
	| today tommorrow afterTommorrow nextMonth |
	today := Date today.
	tommorrow := (DateAndTime today + 1 days) asDate.
	afterTommorrow := (DateAndTime today + 2 days) asDate.
	nextMonth := (DateAndTime today + 31 days) asDate.
	calendar currentDate: tommorrow.
	self deny: [ :html | calendar displayDate: afterTommorrow on: html ] generatedIncludes: 'mdl-color-text--primary'.
	self assert: [ :html | calendar displayDate: today on: html ] generatedIncludes: 'mdl-color-text--primary'.
	
	self deny: [ :html | calendar displayDate: afterTommorrow on: html ] generatedIncludes: 'mdl-color-text--primary-contrast mdl-color--primary'.
	self assert: [ :html | calendar displayDate: tommorrow on: html ] generatedIncludes: 'mdl-color-text--primary-contrast mdl-color--primary'.
	
	self deny: [ :html | calendar displayDate: tommorrow on: html ] generatedIncludes: 'disabled'.
	
	calendar currentDate: today.
	self assert: [ :html | calendar displayDate: nextMonth on: html ] generatedIncludes: 'disabled'
]

{ #category : #tests }
MDLDatePickerTest >> testGoToNextMonth [
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar goToNextMonth.
	self assert: calendar currentDate asMonth equals: (Month month: 5 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 5 day: 10)
]

{ #category : #tests }
MDLDatePickerTest >> testGoToPreviousMonth [
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar goToPreviousMonth.
	self assert: calendar currentDate asMonth equals: (Month month: 3 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 3 day: 10)
]

{ #category : #tests }
MDLDatePickerTest >> testId [
	self deny: [ :html | html render: calendar ] generatedIncludes: 'id="testId"'.
	calendar id: 'testId'.
	self assert: [ :html | html render: calendar ] generatedIncludes: 'id="testId"'
]

{ #category : #tests }
MDLDatePickerTest >> testIdIsEnsured [
	self assert: [ :html | html render: calendar ] generatedIncludes: 'id="id1"'
]

{ #category : #tests }
MDLDatePickerTest >> testIsInCurrentMonth [
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: (calendar isInCurrentMonth: (Date year: 2018 month: 6 day: 5)).
	self deny: (calendar selectedDateIs: (Date year: 2018 month: 7 day: 4))
]

{ #category : #tests }
MDLDatePickerTest >> testIsTodayAndNotSelected [
	| today tommorow |
	today := Date today.
	tommorow := (DateAndTime today + 1 days) asDate.
	calendar currentDate: today.
	self deny: (calendar isTodayAndNotSelected: today).
	calendar currentDate: tommorow.
	self assert: (calendar isTodayAndNotSelected: today).
	self deny: (calendar isTodayAndNotSelected: tommorow)
]

{ #category : #tests }
MDLDatePickerTest >> testJsOnCompleteScript [
	calendar onCompleteScript: 'console.log("test")' js.
	self assert: (calendar jsOnCompleteScript isKindOf: JSStream).
	self assert: calendar jsOnCompleteScript contents equals: 'console.log("test")'.
	calendar onCompleteScript: 'console.log("test")'.
	self assert: (calendar jsOnCompleteScript isKindOf: JSStream).
	self assert: calendar jsOnCompleteScript contents equals: 'console.log("test")'
]

{ #category : #tests }
MDLDatePickerTest >> testRenderMonthesOn [
	self assert: [ :html | calendar renderMonthesOn: html ] generatedIncludesAll: Date monthNames.
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: [ :html | calendar renderMonthesOn: html ] generatedIncludes: 'May</div><div class="mdl-cell month-cell active mdl-cell--4-col-desktop"' "June need to be active"
]

{ #category : #tests }
MDLDatePickerTest >> testRenderYearsOn [
	self assert: [ :html | calendar renderYearsOn: html ] generatedIncludesAll: (calendar calendar yearsInterval collect: #asString).
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: [ :html | calendar renderYearsOn: html ] generatedIncludes: '2017</div><div class="mdl-cell year-cell active mdl-cell--4-col-desktop"' "2018 need to be active"
]

{ #category : #tests }
MDLDatePickerTest >> testSelectedDateIs [
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: (calendar selectedDateIs: (Date year: 2018 month: 6 day: 5)).
	self deny: (calendar selectedDateIs: (Date year: 2018 month: 6 day: 4))
]
