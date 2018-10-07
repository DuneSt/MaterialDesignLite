helpers
testCodeOf
	self
		assert: (self codeOf: #mockMethod)
		equals:
			'	"I am a Mock method for tests"
	
	^ 2 + 3'