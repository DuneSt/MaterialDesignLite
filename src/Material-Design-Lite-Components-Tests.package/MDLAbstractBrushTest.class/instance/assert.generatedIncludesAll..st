asserting
assert: aBlock generatedIncludesAll: aCollection
	self
		executeWithMockContext: [ | generated |
			generated := WAHtmlCanvas builder render: aBlock.
			aCollection do: [ :aString | self assert: (generated includesSubstring: aString) ] ]