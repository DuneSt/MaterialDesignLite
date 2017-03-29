accessing
nextState
	^ nextState ifNil: [ nextState := self defaultNextState ]