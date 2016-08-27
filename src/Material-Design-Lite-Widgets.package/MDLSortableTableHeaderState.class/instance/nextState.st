rendering
nextState
	nextState ifNil: [ self initializeNextState ].
	^ nextState