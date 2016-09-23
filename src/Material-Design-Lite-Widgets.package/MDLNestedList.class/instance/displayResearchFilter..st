accessing
displayResearchFilter: aFilter
	aFilter
		ifEmpty: [ 
			displayResearchFilter := nil.
			filteredElements := #() ]
		ifNotEmpty: [ 
			displayResearchFilter := aFilter.
			filteredElements := self elements
				select: [ :element | ((self format value: element) findString: self displayResearchFilter startingAt: 1 caseSensitive: false) > 0 ] ]