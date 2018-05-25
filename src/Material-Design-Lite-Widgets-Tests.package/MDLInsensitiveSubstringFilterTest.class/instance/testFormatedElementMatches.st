tests
testFormatedElementMatches
	self assert: (self actualClass formatedElement: 'test' matches: 'test').
	self assert: (self actualClass formatedElement: 'Test' matches: 'test' ).
	self assert: (self actualClass formatedElement: 'anothertest' matches: 'test').
	self assert: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).
	self assert: (self actualClass formatedElement: 'anothertest2' matches: 'test').
	self assert: (self actualClass formatedElement: 'anotherTest2' matches: 'test' ).
	self deny: (self actualClass formatedElement: 'anothertet2' matches: 'test' )