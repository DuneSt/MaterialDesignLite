accessing
displayResearchFilter: aFilter
	aFilter
		ifEmpty: [ 
			displayResearchFilter := nil.
			filteredElements := #() ]
		ifNotEmpty: [ 
			displayResearchFilter := aFilter.
			filteredElements := self elements
				select: [ :element | self filter isMatching: (self format value: element) with: self displayResearchFilter ] ]