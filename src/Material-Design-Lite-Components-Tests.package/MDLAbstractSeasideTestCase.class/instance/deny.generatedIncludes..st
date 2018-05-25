asserting
deny: aBlock generatedIncludes: aString
	self
		executeWithMockContext: [ | actual |
			actual := WAHtmlCanvas builder render: aBlock.
			self deny: (actual includesSubstring: aString) description: actual , ' should includes ' , aString ]