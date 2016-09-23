initialization
initializeNextState
	self
		nextState:
			(MDLSortableTableHeaderElementUnsorted new nextState: (MDLSortableTableHeaderElementSortedAscending new nextState: self))