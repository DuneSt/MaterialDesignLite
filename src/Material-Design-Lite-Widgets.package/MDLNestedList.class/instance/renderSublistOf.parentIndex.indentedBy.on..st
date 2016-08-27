rendering
renderSublistOf: children parentIndex: parentIndex indentedBy: anInteger on: html
	children ifEmpty: [ ^ self ].
	html
		unorderedList: [ 
			children
				doWithIndex: [ :child :index | 
					self
						renderListItem: child
						index: parentIndex asString, ':', index asString
						indentedBy: anInteger + 1
						on: html ] ]