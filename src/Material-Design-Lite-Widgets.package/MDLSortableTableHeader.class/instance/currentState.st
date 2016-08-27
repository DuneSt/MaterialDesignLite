accessing
currentState
	^ currentState ifNil: [
		self unsortedState: MDLSortableTableHeaderElementUnsorted new.
		self currentState: self unsortedState.
		currentState ]