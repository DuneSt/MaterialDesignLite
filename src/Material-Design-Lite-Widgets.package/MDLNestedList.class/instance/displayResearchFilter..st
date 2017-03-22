accessing
displayResearchFilter: aFilter
	aFilter
		ifEmpty: [ 
			displayResearchFilter := nil.
			filteredElements := #() ]
		ifNotEmpty: [ 
			displayResearchFilter := aFilter.
			filteredElements := self filter
				selectMatchingFrom: self elements
				format: self format
				with: self displayResearchFilter ]