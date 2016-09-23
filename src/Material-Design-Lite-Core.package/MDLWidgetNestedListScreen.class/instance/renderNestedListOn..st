code
renderNestedListOn: html
	html div
		style: 'text-align: left';
		with: [ html
				render:
					((MDLNestedList
						elements: WAObject allSubclasses
						children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
						format: #name;
						withResearchField) ]