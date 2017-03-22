rendering
renderPossibilitiesFor: anId withMap: aLabelMap on: html
	html unorderedList
		attributeAt: 'for' put: anId;
		class: 'mdl-menu mdl-menu--bottom-left mdl-js-menu';
		with: [ 
					(self sortBlock ifNil: [ aLabelMap keys ] ifNotNil: [ :blk | aLabelMap keys sort: blk ])
						do: [ :label | 
							html listItem
								class: #'mdl-menu__item';
								id: (self idForMenuItemLabelled: label inSelectWith: anId);
								with: label ] ]