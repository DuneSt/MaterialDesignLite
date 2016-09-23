accessing
filteredElements
	^ self displayResearchFilter ifNil: [ self elements ] ifNotNil: [ filteredElements ]