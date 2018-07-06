accessing
indexOfRootElementContainingSelectedEntity
	self selectedEntity ifNil: [ ^ 0 ].
	^ self filteredElements
		indexOf: self selectedEntity
		ifAbsent: [ self filteredElements
				detect: [ :element | self isIncludingSelectedChildren: element ]
				ifFound: [ :element | self filteredElements indexOf: element ]
				ifNone: [ "The selected element is not at all in the tree" 1 ] ]