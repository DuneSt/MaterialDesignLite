asserting
assert: aBlock generates: aString
	self assert: (WAHtmlCanvas builder render: aBlock) equals: aString