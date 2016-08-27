accessing
itemsByPageSelectionComponent
	^ (MDLMenuButtonWidget
		possibilities: rowsPerPagePossibilities
		label: #asString
		action: [ :o | self elementsToShow: o ]
		choosingText: self elementsToShow)
		sortBlock: [ :a :b | a key asInteger <= b key asInteger ];
		yourself