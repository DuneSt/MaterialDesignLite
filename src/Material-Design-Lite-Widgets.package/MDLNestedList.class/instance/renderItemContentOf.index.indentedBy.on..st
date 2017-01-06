rendering
renderItemContentOf: aNode index: anIndex indentedBy: anInteger on: html
	| anId div |
	anId := html nextId.
	div := html div class: #itemContener.
	self hasCustomizationForEntry
		ifTrue: [ self entryCustomizationHook value: div value: aNode element ].
	div
		attributeAt: 'draggable' put: 'true';
		attributeAt: 'onDragOver'
			put: 'if("' , anIndex asString , '" != event.dataTransfer.getData("sourceIndex")) {event.preventDefault();}';
		attributeAt: 'ondrop' put: 'dropListItem(event, "' , anIndex asString , '");';
		attributeAt: 'ondragstart' put: 'dragListItem(event,"' , anIndex asString , '")';
		style: 'padding-left: ' , (15 * anInteger) asString , 'px;';
		class: #isSelected if: aNode selectedElement;
		with: [ 
					self renderIconOf: aNode element on: html.
					self
						renderAnchor: aNode
						withId: anId
						index: anIndex
						inDiv: div
						indentedBy: anInteger
						on: html.
					self renderRightIconOf: aNode element on: html ]