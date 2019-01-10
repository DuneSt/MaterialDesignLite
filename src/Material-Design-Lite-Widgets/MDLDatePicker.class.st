"
I am a date picker embebded in a MDLCard for a better display.
"
Class {
	#name : #MDLDatePicker,
	#superclass : #MDLFlatDatePicker,
	#category : #'Material-Design-Lite-Widgets-Calendar'
}

{ #category : #accessing }
MDLDatePicker >> containerClass [
	^ 'mdl-calendar-card'
]

{ #category : #rendering }
MDLDatePicker >> renderCalendarOn: html [
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				class: 'mdl-calendar-widget';
				addProperties: properties;
				primaryColorTitle: self calendar printDateForHeader;
				addTextContainer: [ self renderCalendarContentOn: html ];
				yourself)
]
