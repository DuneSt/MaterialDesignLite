demos
renderListWithIconsOn: html
	html div
		style: 'height: 400px; width: 400px;';
		shadow: 2;
		with:
			((MDLNestedList
				elements: WAObject allSubclasses
				children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
				"The next blocks can either:
				- Take one argument (the entity) and return a component to display
				- Take two argument (entity + canvas) and draw the icon on the canvas"
				iconBlock: [ :entity | MDLNestedListIconExampleComponent isRepresentingClass: entity isClass ];
				rightIconBlock: [ :entity :canvas | 
					canvas mdlChipContact
						hexColor: '3f51b5';
						with: entity printString last ];
				format: #name;
				yourself)
	