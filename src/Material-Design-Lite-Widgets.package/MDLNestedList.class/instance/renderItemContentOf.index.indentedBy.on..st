as yet unclassified
renderItemContentOf: anItem index: anIndex indentedBy: anInteger on: html
	| anId |
	anId := html nextId.
	html div
		class: #itemContener;
		style: 'padding-left: ' , (15 * anInteger) asString , 'px;';
		class: #isSelected if: anItem = self selectedEntity;
		with: [ 
					html anchor
						onClick: 'goTo(' , anIndex asString , ');';
						with: [ 
									self renderIconOf: anItem on: html.
									html span
										class: #item;
										id: anId;
										with: [ html text: (self format value: anItem) ] ].
					(self childrenBlock value: anItem) ifNotEmpty: [ html div onClick: 'expandCollapse(this)';class: #expIcon ] ].
	self renderHelpOf: anItem at: anId on: html