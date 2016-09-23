accessing
elementsDisplayList
	| start overflow |
	^ self filteredElements size <= self listMaxSize
		ifTrue: [ self filteredElements ]
		ifFalse: [ 
			start := ([ 
			self filteredElements
				indexOf: self selectedEntity
				ifAbsent: [ self filteredElements detectIndex: [ :element | self isIncludingSelectedChildren: element ] ] ]
				on: NotFound
				do: [ 1 ]) - (self listMaxSize / 2) max: 1.
				self flag: #check. "Before we catched MessageNotUnderstood but I think this was a mistake. I changed it for NotFound, we need to check if this is correct."
			overflow := 0 max: start + self listMaxSize - self filteredElements size.
			self filteredElements copyFrom: start - overflow to: start + self listMaxSize - 1 - overflow ]