tests
testIndexOfRootElementContainingSelectedEntityAtSecondLevel
	list elements: self sampleElements keys.
	list childrenBlock: self childrenBlockForSampleElements.
	list selectedEntity: 2.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 1.
	list selectedEntity: 8.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 2