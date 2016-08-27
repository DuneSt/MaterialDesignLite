accessing
nextState
	nextState ifNil: [ self initializeNextState ].
	^ nextState