accessing
elementsDisplayList
	| start overflow |
	^ self filteredElements size <= self listMaxSize
		ifTrue: [ self filteredElements ]
		ifFalse: [ start := self indexOfRootElementContainingSelectedEntity - (self listMaxSize / 2) max: 1.
			overflow := 0 max: start + self listMaxSize - self filteredElements size.
			self filteredElements copyFrom: start - overflow to: start + self listMaxSize - 1 - overflow ]