tests
testIndexOfRootElementContainingSelectedEntity
	list elements: self sampleElements keys.
	list childrenBlock: self childrenBlockForSampleElements.
	list selectedEntity: 1.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 1.
	list selectedEntity: 5.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 2