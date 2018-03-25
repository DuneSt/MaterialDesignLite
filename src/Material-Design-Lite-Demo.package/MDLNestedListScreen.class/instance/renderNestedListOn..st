demos
renderNestedListOn: html
	html div
		mdlTextColorPrimary;
		with: 'Selected element: ' , (selectedElement ifNil: [ 'Nothing' ] ifNotNil: [ selectedElement printString ]).
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
				format: #name;
				helpBlock: #comment;
				selectedEntity: selectedElement;
				actionBlock: [ :class | selectedElement := class ];
				yourself)