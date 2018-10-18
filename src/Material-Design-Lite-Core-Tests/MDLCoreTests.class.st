Class {
	#name : #MDLCoreTests,
	#superclass : #TestCase,
	#category : 'Material-Design-Lite-Core-Tests'
}

{ #category : #helpers }
MDLCoreTests >> mockMethod [
	"I am a Mock method for tests"
	
	^ 2 + 3
]

{ #category : #helpers }
MDLCoreTests >> testCodeOf [
	self
		assert: (self codeOf: #mockMethod)
		equals:
			'	"I am a Mock method for tests"
	
	^ 2 + 3'
]
