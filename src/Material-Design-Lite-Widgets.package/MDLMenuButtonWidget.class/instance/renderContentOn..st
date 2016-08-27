rendering
renderContentOn: html
	| buttonId |
	buttonId := self class getId. 
		html mdlButton
		id: 'menuButton', buttonId;
		disabled: self objectsPossibilities isEmpty;
		with: [ html text: (self selectedObject ifNil: [ self choosingText ] ifNotNilDo: [ :anObject | (self labelFor: anObject) ]) ].
	html mdlMenu
		bottomLeft;
		for: 'menuButton', buttonId;
		with: [ 
					self objectsPossibilitiesWithLabel
						do: [ :anAssociation | 
							html
								mdlMenuItem: [ 
									html div class: 'ui-widget'; with: [ 
									html
		form: [ 
									html mdlButton 
										id: (anAssociation key);
										title: (self description: html for: anAssociation value);
										callback: [ self actionWith: anAssociation value ];
										with: (anAssociation key); onClick: 'submit()' ].
									"html mdlTooltip for: aSpell name; large; with: [ html render: ( FGSpellComponent spell: aSpell )]"
									 ] ]]].