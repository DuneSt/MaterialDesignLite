tests
testAddAllButtons
	| toolbar |
	toolbar := MDLVerticalToolbar new.
	self assert: toolbar buttons size equals: 0.
	toolbar
		addAllButtons:
			{(MDLFoldButton for: '#id').
			MDLPanelSwitcherButton new}.
	self assert: toolbar buttons size equals: 2