tests
testAddButton
	| toolbar |
	toolbar := MDLVerticalToolbar new.
	self assert: toolbar buttons size equals: 0.
	toolbar addButton: (MDLFoldButton for: '#id').
	self assert: toolbar buttons size equals: 1