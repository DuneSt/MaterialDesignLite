tests
testAdaptPattern
	self assert: (self actualClass adaptPattern: 'test') equals: '.*test.*'.
	self assert: (self actualClass adaptPattern: 'tes*t') equals: 'tes.*t'