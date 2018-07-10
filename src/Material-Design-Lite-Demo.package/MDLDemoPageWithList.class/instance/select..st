actions
select: screen
	self
		selectedScreen:
			(self selectedScreen class = screen
				ifTrue: [ nil ]
				ifFalse: [ screen new ])