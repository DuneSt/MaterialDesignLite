rendering
renderListOn: html
	| div |
	div := html div
		id: (self idFor: #listContainer);
		class: #listContainer.
	self setDataForCallBackFor: div html: html.
	div
		with: [ 
			| elementsToDisplay firstElementIndex |
			elementsToDisplay := self elementsDisplayList.
			firstElementIndex := self filteredElements
				indexOf: (elementsToDisplay ifEmpty: [ nil ] ifNotEmpty: [ :coll | coll first ]).
			html unorderedList
				id: (self idFor: #expList);
				class: #expList;
				with: [ 
							elementsToDisplay
								doWithIndex: [ :item :index | 
									self
										renderListTree: (self obtainTreeFor: item)
										index: index + firstElementIndex - 1
										indentedBy: 1
										on: html ] ] ].
	self draggableMechanism: html forDiv: div