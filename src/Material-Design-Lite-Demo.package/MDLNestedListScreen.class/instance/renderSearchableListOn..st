demos
renderSearchableListOn: html
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
				withResearchField;
				"Could be also filterPseudoRegex or filterSensitiveBeginsWith or a specific filter created with #filter:"
				filterInsensitiveBeginsWith;
				yourself)