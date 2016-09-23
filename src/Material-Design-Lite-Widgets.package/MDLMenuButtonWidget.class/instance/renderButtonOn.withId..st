rendering
renderButtonOn: html withId: buttonId
	html div
		id: 'menuButton' , buttonId;
		class: 'menuButtonWidgetButton mdl-button mdl-js-button menuButtonWidgetButton';
		disabled: self objectsPossibilities isEmpty;
		with: [ html
				text:
					(self selectedObject
						ifNil: [ self choosingText ]
						ifNotNil: [ :anObject | self labelFor: anObject ]).
			html mdlIcon: 'arrow_drop_down' ]