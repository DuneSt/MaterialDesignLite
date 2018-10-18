Class {
	#name : #MDLVerticalToolbarTest,
	#superclass : #MDLAbstractSeasideTestCase,
	#category : 'Material-Design-Lite-Extensions-Tests-Panels'
}

{ #category : #tests }
MDLVerticalToolbarTest >> testAddAllButtons [
	| toolbar |
	toolbar := MDLVerticalToolbar new.
	self assert: toolbar buttons size equals: 0.
	toolbar
		addAllButtons:
			{(MDLFoldButton for: '#id').
			MDLPanelSwitcherButton new}.
	self assert: toolbar buttons size equals: 2
]

{ #category : #tests }
MDLVerticalToolbarTest >> testAddButton [
	| toolbar |
	toolbar := MDLVerticalToolbar new.
	self assert: toolbar buttons size equals: 0.
	toolbar addButton: (MDLFoldButton for: '#id').
	self assert: toolbar buttons size equals: 1
]

{ #category : #tests }
MDLVerticalToolbarTest >> testChildren [
	| toolbar buttons |
	toolbar := MDLVerticalToolbar new.
	buttons := {(MDLFoldButton for: '#id').
	MDLPanelSwitcherButton new}.
	toolbar addAllButtons: buttons.
	self assertCollection: toolbar children hasSameElements: buttons
]

{ #category : #tests }
MDLVerticalToolbarTest >> testRendering [
	self
		assert: [ :html | 
			html
				render:
					(MDLVerticalToolbar
						buttons:
							{(MDLFoldButton for: '#id').
							MDLPanelSwitcherButton new}) ]
		generatedIncludes: 'class="vertical-toolbar"'
]

{ #category : #tests }
MDLVerticalToolbarTest >> testResetButtonsSelection [
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
]
