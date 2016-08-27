rendering
renderSublistOf: children indentedBy: anInteger on: html
	children ifEmpty: [ ^ self ].
	
	html unorderedList: [ children do: [ :child | self renderListItem: child indentedBy: anInteger + 1 on: html ] ]