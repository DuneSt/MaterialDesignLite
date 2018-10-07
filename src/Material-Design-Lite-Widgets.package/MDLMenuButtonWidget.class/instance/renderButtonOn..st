rendering
renderButtonOn: html
	html div
		id: self id;
		class: 'menuButtonWidgetButton mdl-button mdl-js-button menuButtonWidgetButton';
		disabled: self objectsPossibilities isEmpty;
		with: [ self selectedObject
				ifNil: [ self renderButtonContentOn: html ]
				ifNotNil: [ :anObject | html text: (self labelFor: anObject) ].
			html mdlIcon: 'arrow_drop_down' ]