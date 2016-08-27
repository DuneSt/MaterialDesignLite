initialization
initializeNextState
	self
		nextState:
			(MDLSortableTableHeaderElementSortedDescending new
				nextState: (MDLSortableTableHeaderElementUnsorted new nextState: self)).
	^ self nextState