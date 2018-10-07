tests
testChildren
	| toolbar buttons |
	toolbar := MDLVerticalToolbar new.
	buttons := {(MDLFoldButton for: '#id').
	MDLPanelSwitcherButton new}.
	toolbar addAllButtons: buttons.
	self assertCollection: toolbar children hasSameElements: buttons