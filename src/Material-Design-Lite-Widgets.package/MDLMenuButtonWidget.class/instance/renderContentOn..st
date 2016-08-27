rendering
renderContentOn: html
	| buttonId |
	buttonId := html nextId.
	html mdlButton
		id: 'menuButton' , buttonId;
		class: 'menuButtonWidgetButton';
		disabled: self objectsPossibilities isEmpty;
		with: [ html text: (self selectedObject ifNil: [ self choosingText ] ifNotNilDo: [ :anObject | self labelFor: anObject ]) ].
	html mdlMenu
		bottomLeft;
		for: 'menuButton' , buttonId;
		class: 'menuButtonWidgetMenu';
		with: [ 
					self objectsPossibilitiesWithLabel
						do: [ :anAssociation | 
							html
								mdlMenuItem: [ 
									html anchor
										callback: [ self actionWith: anAssociation value ];
										style: 'display: block; text-decoration: none; color: inherit;';
										with: [ html text: anAssociation key ] ] ] ]