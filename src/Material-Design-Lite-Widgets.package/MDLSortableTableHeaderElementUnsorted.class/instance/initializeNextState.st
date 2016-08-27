initialization
initializeNextState
	self nextState: 
		(MDLSortableTableHeaderElementSortedAscending new 
			nextState: 
				(MDLSortableTableHeaderElementSortedDescending new 
						nextState: self)).
	^ self