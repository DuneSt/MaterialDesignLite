"
Screen to render MDLCalendarWidget examples
"
Class {
	#name : #MDLCalendarScreen,
	#superclass : #MDLWidgetDemo,
	#instVars : [
		'selectedDay'
	],
	#category : 'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLCalendarScreen class >> description [
	^ 'A calendar in Material Design style to pick a date'
]

{ #category : #accessing }
MDLCalendarScreen class >> icon [
	^ #compcalendarPng
]

{ #category : #accessing }
MDLCalendarScreen class >> title [
	^ 'Date Picker'
]

{ #category : #sections }
MDLCalendarScreen >> datePicker [
	^ OrderedDictionary new
		add: 'Date picker' -> #renderDatePickerOn:;
		yourself
]

{ #category : #sections }
MDLCalendarScreen >> flatDatePicker [
	^ OrderedDictionary new
		add: 'Flat date picker' -> #renderFlatDatePickerOn:;
		yourself
]

{ #category : #initialization }
MDLCalendarScreen >> initialize [
	super initialize.
	selectedDay := Date today
]

{ #category : #demos }
MDLCalendarScreen >> renderDatePickerOn: html [
	html
		render:
			(MDLDatePicker new
				callback: [ :day | selectedDay := day ];
				currentDate: selectedDay;
				onCompleteScript: ((html jQuery id: 'selectedDay2') load html: [ :r | 
					r text: 'Selected day: ' , selectedDay asString ]);
				yourself).
	html break.
	html div
		id: 'selectedDay2';
		mdlTypographyFontBold;
		mdlTextColorPrimary;
		with: 'Selected day: ' , selectedDay asString
]

{ #category : #demos }
MDLCalendarScreen >> renderFlatDatePickerOn: html [
	html div
		style: 'background-color: white;border: 1px grey solid;';
		with:
			(MDLFlatDatePicker new
				callback: [ :day | selectedDay := day ];
				currentDate: selectedDay;
				onCompleteScript: ((html jQuery id: 'selectedDay') load html: [ :r | 
					r text: 'Selected day: ' , selectedDay asString ]);
				yourself).
	html break.
	html div
		id: 'selectedDay';
		mdlTypographyFontBold;
		mdlTextColorPrimary;
		with: 'Selected day: ' , selectedDay asString
]

{ #category : #rendering }
MDLCalendarScreen >> renderScreenContentOn: html [
	self
		render: self datePicker on: html;
		render: self flatDatePicker on: html
]
