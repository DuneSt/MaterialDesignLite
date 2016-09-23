rendering
renderListOn: html
	| div scrollCb clickCb |
	div := html div class: #listContainer.
	scrollCb := self defineScrollCallbackOn: div.
	clickCb := self defineClickCallbackOn: div.
	self
		setDataForCallBack: div
		html: html
		scrollCb: scrollCb
		clickCb: clickCb.
	div
		with: [ 
			| elementsToDisplay firstElementIndex |
			elementsToDisplay := self elementsDisplayList.
			firstElementIndex := self filteredElements
				indexOf: (elementsToDisplay ifEmpty: [ nil ] ifNotEmpty: [ :coll | coll first ]).
			html unorderedList
				class: #expList;
				with: [ 
							elementsToDisplay
								doWithIndex: [ :item :index | 
									self
										renderListTree: (self obtainTreeFor: item)
										index: index + firstElementIndex - 1
										indentedBy: 1
										on: html ] ] ].
	html script: self expendableJsScript.
	self draggableMechanism: html forDiv: div