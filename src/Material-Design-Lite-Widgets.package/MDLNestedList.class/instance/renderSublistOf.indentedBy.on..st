rendering
renderSublistOf: children indentedBy: anInteger on: html
	children ifEmpty: [ ^ self ].
	html
		unorderedList: [ 
			children
				doWithIndex: [ :child :index | 
					self
						renderListItem: child
						index: index
						indentedBy: anInteger + 1
						on: html ] ]