tests
testIndexOfRootElementContainingSelectedEntityIfSelectedEntityIsNil
	list elements: self sampleElements keys.
	list childrenBlock: self childrenBlockForSampleElements.
	list selectedEntity: nil.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 0