accessing
currentState
	^ currentState
		ifNil: [ self unsort.
			currentState ]