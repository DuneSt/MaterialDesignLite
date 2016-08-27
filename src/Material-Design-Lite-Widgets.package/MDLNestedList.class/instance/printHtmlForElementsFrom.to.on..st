dynamicEntriesAdding
printHtmlForElementsFrom: start to: end on: stream
	stream
		nextPutAll:
			(WAHtmlCanvas builder
				documentClass: WAHtmlDocument;
				rootClass: WAHtmlRoot;
				fullDocument: false;
				render: [ :htmlDyn | 
							(start <= self elements size and: [ end >= 1 ])
								ifTrue: [ 
									self elements
										from: (start max: 1)
										to: (end min: self elements size)
										do: [ :anElement | 
											self
												renderListItem: anElement
												index: (self elements indexOf: anElement)
												indentedBy: 1
												on: htmlDyn ] ] ])