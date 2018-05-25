asserting
assert: aBlock generates: aString
	self executeWithMockContext: [ self assert: (WAHtmlCanvas builder render: aBlock) equals: aString ]