tests
testResetButtonsSelection
	| toolbar buttons |
	toolbar := MDLVerticalToolbar new.
	buttons := {(MDLFoldButton for: '#id').
	(MDLPanelSwitcherButton new
		select;
		yourself)}.
	toolbar addAllButtons: buttons.
	self assert: (toolbar children anySatisfy: #isSelected).
	toolbar resetButtonsSelection.
	self deny: (toolbar children anySatisfy: #isSelected)