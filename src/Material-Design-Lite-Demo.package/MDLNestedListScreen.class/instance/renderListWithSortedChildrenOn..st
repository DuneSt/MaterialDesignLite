demos
renderListWithSortedChildrenOn: html
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
				childrenSortBlock: [ :child1 :child2 | child1 name < child2 name ];
				yourself)