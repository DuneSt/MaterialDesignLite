rendering
renderSublistOf: children parentIndex: parentIndex indentedBy: anInteger on: html
	| sortedChildren |
	children ifEmpty: [ ^ self ].
	
	sortedChildren := self childrenSortBlock ifNil: [ children ] ifNotNil: [ :sortBlock | children sorted: [ :node1 :node2 | sortBlock value: node1 element value: node2 element ] ].
	html
		unorderedList: [ 
			sortedChildren
				doWithIndex: [ :child :index | 
					self
						renderListTree: child
						index: parentIndex asString, ':', index asString
						indentedBy: anInteger + 1
						on: html ] ]