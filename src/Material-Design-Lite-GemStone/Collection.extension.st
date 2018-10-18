Extension { #name : #Collection }

{ #category : #'*Material-Design-Lite-GemStone' }
Collection >> detect: aBlock ifFound: foundBlock ifNone: exceptionBlock [
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	If some element evaluates aBlock to true, then cull this element into 
	foundBlock and answer the result of this evaluation. 
	If none evaluate to true, then evaluate exceptionBlock."

	self
		do: [ :each | 
			(aBlock value: each)
				ifTrue: [ ^ foundBlock cull: each ] ].
	^ exceptionBlock value	
]

{ #category : #'*Material-Design-Lite-GemStone' }
Collection >> isNotEmpty [
	"Answer whether the receiver contains any elements."

	^ self isEmpty not
]
