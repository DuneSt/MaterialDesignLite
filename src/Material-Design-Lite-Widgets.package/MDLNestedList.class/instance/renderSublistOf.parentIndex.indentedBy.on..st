rendering
renderSublistOf: children parentIndex: parentIndex indentedBy: anInteger on: html
	children ifEmpty: [ ^ self ].
	
	html
		unorderedList: [ 
			children
				doWithIndex: [ :child :index | 
					self
						renderListTree: child
						index: parentIndex asString, ':', index asString
						indentedBy: anInteger + 1
						on: html ] ]