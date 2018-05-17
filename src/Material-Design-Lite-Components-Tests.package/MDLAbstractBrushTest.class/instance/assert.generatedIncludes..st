asserting
assert: aBlock generatedIncludes: aString
	self executeWithMockContext: [ self assert: ((WAHtmlCanvas builder render: aBlock) includesSubstring: aString) ]