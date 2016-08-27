rendering
renderItemContentOf: anItem indentedBy: anInteger on: html
	| id |
	id := html nextId.
	html div
		class: #itemContener;
		style: 'padding-left: ' , (15 * anInteger) asString , 'px;';
		class: #isSelected if: anItem = self selectedEntity;
		with: [ 
					html anchor
						callback: [ self actionBlock value: anItem ];
						with: [ 
									self renderIconOf: anItem on: html.
									html span
										class: #item;
										id: id;
										with: [ html text: (self format value: anItem) ] ].
					(self childrenBlock value: anItem) ifNotEmpty: [ html div class: #expIcon ] ].
	self renderHelpOf: anItem at: id on: html