rendering
renderContentOn: html
	| buttonId |
	buttonId := self class getId. 
		html mdlButton
		id: 'menuButton', buttonId;
		with: [ html text: (self selectedObject ifNil: [ self choosingText ] ifNotNilDo: [ :anObject | (self labelFor: anObject) ]) ].
	html mdlMenu
		bottomLeft;
		for: 'menuButton', buttonId;
		with: [ 
					self objectsPossibilities
						do: [ :anObject | 
							html
								mdlMenuItem: [ 
									html div class: 'ui-widget'; with: [ 
									html
		form: [ 
									html mdlButton 
										id: (self labelFor: anObject);
										title: (self description: html for: anObject);
										callback: [ self actionWith: anObject ];
										with: (self labelFor: anObject); onClick: 'submit()' ].
									"html mdlTooltip for: aSpell name; large; with: [ html render: ( FGSpellComponent spell: aSpell )]"
									 ] ]]].