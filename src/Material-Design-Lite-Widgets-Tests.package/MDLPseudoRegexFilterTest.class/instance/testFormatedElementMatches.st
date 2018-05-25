tests
testFormatedElementMatches
	self assert: (self actualClass formatedElement: 'test' matches: 'test.*' asRegexIgnoringCase).
	self assert: (self actualClass formatedElement: 'Test' matches: 'test.*' asRegexIgnoringCase).
	self assert: (self actualClass formatedElement: 'testToto' matches: 'test.*' asRegexIgnoringCase).
	self deny: (self actualClass formatedElement: 'anothertest' matches: 'test.*' asRegexIgnoringCase)