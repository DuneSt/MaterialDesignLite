initialization
initializeComponentsScreens
	self screens at: 'components' put: (self class componentScreenClasses collect: [ :aScreenClass | aScreenClass new ]).
	(self screens at: 'components')
		do: [ :each | 
			each addDecoration: (MDLScreenFooter newWithFooter: self initializeFooter).
			each addDecoration: (MDLScreenLayout newWithLayout: self initializeComponentsLayout) ].