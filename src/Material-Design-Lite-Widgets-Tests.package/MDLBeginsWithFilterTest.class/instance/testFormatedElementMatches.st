tests
testFormatedElementMatches
	self assert: (self actualClass formatedElement: 'test' matches: 'test').
	self deny: (self actualClass formatedElement: 'Test' matches: 'test' ).
	self deny: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).