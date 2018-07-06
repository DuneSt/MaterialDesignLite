initialization
initializeNextState
	self nextState: (self defaultNextState new nextState: (self defaultNextState defaultNextState new nextState: self))