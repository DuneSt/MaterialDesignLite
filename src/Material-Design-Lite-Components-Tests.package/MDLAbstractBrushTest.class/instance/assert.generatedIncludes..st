asserting
assert: aBlock generatedIncludes: aString
	self
		executeWithMockContext: [ | actual |
			actual := WAHtmlCanvas builder render: aBlock.
			self assert: (actual includesSubstring: aString) description: actual , ' should includes ' , aString ]