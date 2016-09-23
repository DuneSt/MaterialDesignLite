dynamicEntriesAdding
printHtmlForElementsFrom: start to: end on: stream
	stream
		nextPutAll:
			(WAHtmlCanvas builder
				documentClass: WAHtmlDocument;
				rootClass: WAHtmlRoot;
				fullDocument: false;
				render: [ :htmlDyn | 
							(start <= self filteredElements size and: [ end >= 1 ])
								ifTrue: [ 
									self filteredElements
										from: (start max: 1)
										to: (end min: self filteredElements size)
										do: [ :anElement | 
											self
												renderListTree: (self obtainTreeFor: anElement)
												index: (self filteredElements indexOf: anElement)
												indentedBy: 1
												on: htmlDyn ] ] ])