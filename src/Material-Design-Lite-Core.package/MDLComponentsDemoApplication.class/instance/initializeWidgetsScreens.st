initialization
initializeWidgetsScreens
	self screens at: 'widgets' put: (self class widgetScreenClasses collect: [ :aScreenClass | aScreenClass new ]).
	(self screens at: 'widgets')
		do: [ :each | 
			each addDecoration: (MDLScreenFooter newWithFooter: self initializeFooter).
			each addDecoration: (MDLScreenLayout newWithLayout: self initializeWidgetsLayout) ]