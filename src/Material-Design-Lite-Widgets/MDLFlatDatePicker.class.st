"
I am a component displaying a calendar to let the user pick a date.
"
Class {
	#name : #MDLFlatDatePicker,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'daysList',
		'calendar',
		'callback',
		'onCompleteScript'
	],
	#category : 'Material-Design-Lite-Widgets-Calendar'
}

{ #category : #accessing }
MDLFlatDatePicker >> calendar [
	^ calendar
]

{ #category : #accessing }
MDLFlatDatePicker >> calendar: anObject [
	calendar := anObject
]

{ #category : #accessing }
MDLFlatDatePicker >> callback: aOneArgBlock [
	aOneArgBlock argumentCount ~= 1
		ifTrue: [ ^ self error: '1 argument expected' ].
	callback := aOneArgBlock
]

{ #category : #accessing }
MDLFlatDatePicker >> containerClass [
	^ 'mdl-calendar'
]

{ #category : #accessing }
MDLFlatDatePicker >> currentDate [
	^ self calendar currentDate
]

{ #category : #accessing }
MDLFlatDatePicker >> currentDate: aDate [
	self calendar currentDate: aDate
]

{ #category : #accessing }
MDLFlatDatePicker >> daysList [
	^ daysList
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> displayDate: aDate on: html [
	html mdlButton
		class: 'mdl-color-text--primary' if: (self isTodayAndNotSelected: aDate);
		class: 'mdl-color-text--primary-contrast mdl-color--primary' if: (self selectedDateIs: aDate);
		class: 'disabled' if: (self isInCurrentMonth: aDate) not;
		rippleEffect;
		icon;
		onClick: (self jsUpdateDate: aDate on: html);
		with: aDate dayOfMonth greaseString
]

{ #category : #private }
MDLFlatDatePicker >> goToMonth: anObject [
	calendar goToMonth: anObject
]

{ #category : #private }
MDLFlatDatePicker >> goToNextMonth [
	self calendar nextMonth
]

{ #category : #private }
MDLFlatDatePicker >> goToNextYears [
	self calendar nextYears
]

{ #category : #private }
MDLFlatDatePicker >> goToPreviousMonth [
	self calendar previousMonth
]

{ #category : #private }
MDLFlatDatePicker >> goToPreviousYears [
	self calendar previousYears
]

{ #category : #initialization }
MDLFlatDatePicker >> initialize [
	super initialize.
	daysList := {'S' . 'M' . 'T' . 'W' . 'T' . 'F' . 'S'}.
	calendar := MDLCalendar new.
	onCompleteScript := ''
]

{ #category : #testing }
MDLFlatDatePicker >> isInCurrentMonth: aDate [
	^ aDate asMonth = self currentDate asMonth
]

{ #category : #testing }
MDLFlatDatePicker >> isTodayAndNotSelected: aDate [
	^ aDate = Date today and: [ aDate ~= self currentDate ]
]

{ #category : #javascript }
MDLFlatDatePicker >> jsGoToMonth: aMonth on: html [
	^ html jQuery ajax
		callback: [ self goToMonth: aMonth ];
		onComplete: (self jsOnCompleteScriptOn: html)
]

{ #category : #javascript }
MDLFlatDatePicker >> jsOnCompleteScript [
	^ self onCompleteScript js
]

{ #category : #javascript }
MDLFlatDatePicker >> jsOnCompleteScriptOn: html [
	^ (html jQuery id: self id) load
		html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ];
		onComplete: self jsOnCompleteScript
]

{ #category : #javascript }
MDLFlatDatePicker >> jsUpdateDate: aDate on: html [
	^ html jQuery ajax
		callback: [ callback value: aDate.
			self currentDate: aDate ];
		onComplete: (self jsOnCompleteScriptOn: html)
]

{ #category : #accessing }
MDLFlatDatePicker >> onCompleteScript [
	^ onCompleteScript
]

{ #category : #accessing }
MDLFlatDatePicker >> onCompleteScript: anObject [
	onCompleteScript := anObject
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderButtonNamed: aString renderingMethod: aSymbol on: html [
	html mdlButton
		rippleEffect;
		onClick: (((html jQuery id: self id) find: '.mdl-card__supporting-text') load html: [ :ajaxHtml | self perform: aSymbol with: ajaxHtml ]);
		with: aString
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderButtonWithIcon: anIcon action: aSymbol on: html [
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick:
					(html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete:
							((html jQuery id: self id) load
								html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				icon: anIcon ]
]

{ #category : #rendering }
MDLFlatDatePicker >> renderCalendarBodyOn: html [
	html table
		class: 'mdl-textfield--full-width';
		with: [ self renderDaysOn: html.
			self renderWeeksOn: html ]
]

{ #category : #rendering }
MDLFlatDatePicker >> renderCalendarContentOn: html [
	html mdlGrid
		style: 'text-align: center; font-size: 14px; line-height:2; color: rgba(0,0,0,1)';
		with: [ 
			self renderCalendarHeaderOn: html.
			html
				mdlCellDesktop: 12
				tablet: 8
				phone: 4
				with: [ self renderCalendarBodyOn: html ] ]
]

{ #category : #rendering }
MDLFlatDatePicker >> renderCalendarHeaderOn: html [
	self renderButtonWithIcon: 'navigate_before' action: #goToPreviousMonth on: html.
	self renderCurrentMonthOn: html.
	self renderButtonWithIcon: 'navigate_next' action: #goToNextMonth on: html
]

{ #category : #rendering }
MDLFlatDatePicker >> renderCalendarOn: html [
	self renderCalendarTitleOn: html.
	html div
		class: 'mdl-card__supporting-text';
		with: [ self renderCalendarContentOn: html ]
]

{ #category : #rendering }
MDLFlatDatePicker >> renderCalendarTitleOn: html [
	html div
		mdlBackgroundColorPrimary;
		class: 'mdl-calendar__title mdl-color-text--primary-contrast';
		with: [ html heading
				level3;
				with: self calendar printDateForHeader ]
]

{ #category : #rendering }
MDLFlatDatePicker >> renderContentOn: html [
	self ensureId: html.
	html div
		id: self id;
		class: self containerClass;
		with: [ self renderCalendarOn: html ]
]

{ #category : #rendering }
MDLFlatDatePicker >> renderCurrentMonthOn: html [
	html
		mdlCellDesktop: 8
		tablet: 6
		phone: 2
		with: [ self
				renderButtonNamed: self currentDate monthAbbreviation
				renderingMethod: #renderMonthesOn:
				on: html.
			html space.
			self
				renderButtonNamed: self currentDate year greaseString
				renderingMethod: #renderYearsOn:
				on: html ]
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderDate: aDate on: html [
	html tableData with: [ self displayDate: aDate on: html ]
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderDaysOn: html [
	html tableColumnGroup: [ 1 to: 7 do: [ :i | html tableColumn width: '14,3%' ] ].
	html tableHead: [ html tableRow: [ self daysList do: [ :day |  html tableHeading class: 'mdl-color-text--grey-600'; with: day ] ] ]
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderMonthesOn: html [
	html mdlGrid
		mdlTypographyTextCenter;
		with: [ Date monthNames
				do: [ :aString | 
					html mdlCell
						class: 'month-cell';
						class: 'active' if: aString = self currentDate monthName;
						onClick: (self jsGoToMonth: (Month indexOfMonth: aString) on: html);
						desktopSize: 4;
						with: aString ] ]
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderWeeksOn: html [
	self currentDate asMonth weeks do: [ :aWeek | html tableRow: [ aWeek dates do: [ :aDate | self renderDate: aDate on: html ] ] ]
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderYearsHeaderOn: html [
	self
		renderYearsIntervalButtonWithIcon: 'navigate_before'
		action: #goToPreviousYears
		on: html.
	html
		mdlCellDesktop: 8
		tablet: 6
		phone: 2
		with:
			(String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: self calendar yearsInterval first greaseString;
						nextPutAll: ' - ';
						nextPutAll: self calendar yearsInterval last greaseString ]).
	self
		renderYearsIntervalButtonWithIcon: 'navigate_next'
		action: #goToNextYears
		on: html
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderYearsIntervalButtonWithIcon: anIcon action: aSymbol on: html [
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick: (((html jQuery id: self id) find: '.mdl-card__supporting-text') load html: [ :ajaxHtml | self perform: aSymbol. self renderYearsOn: ajaxHtml ]);
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				icon: anIcon ]
]

{ #category : #'private-rendering' }
MDLFlatDatePicker >> renderYearsOn: html [
	html mdlGrid
		mdlTypographyTextCenter;
		with: [ self renderYearsHeaderOn: html.
			self calendar yearsInterval
				do: [ :aYear | 
					html mdlCell
						class: 'year-cell';
						class: 'active' if: aYear = self currentDate year;
						onClick:
							(html jQuery ajax
								callback: [ self calendar goToYear: aYear ];
								onComplete: (self jsOnCompleteScriptOn: html));
						desktopSize: 4;
						with: aYear greaseString ] ]
]

{ #category : #testing }
MDLFlatDatePicker >> selectedDateIs: aDate [
	^ aDate = self currentDate
]
