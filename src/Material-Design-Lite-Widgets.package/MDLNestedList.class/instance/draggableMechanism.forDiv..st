draggable
draggableMechanism: html forDiv: div
	self hasDraggableItems
		ifTrue: [ 
			html
				script:
					(self
						draggableScript: html actionUrl
						cb:
							(div
								storeCallback:
									(WAValueCallback
										on: [ :drag | 
											| dragValues |
											dragValues := drag substrings: ';'.
											self dragAndDropBlock
												value: (self obtainElementForPath: dragValues first)
												value: (self obtainElementForPath: dragValues second) ]))) ]