tests
testIndexOfRootElementContainingSelectedEntityAtThirdLevel
	list elements: self sampleElements keys.
	list childrenBlock: self childrenBlockForSampleElements.
	list selectedEntity: 12.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 3