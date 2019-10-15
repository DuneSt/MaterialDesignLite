"
A MDLExpansionPanelTest is a test class for testing the behavior of MDLExpansionPanel
"
Class {
	#name : #MDLExpansionPanelTest,
	#superclass : #TestCase,
	#category : #'Material-Design-Lite-Widgets-Tests-Expansion'
}

{ #category : #test }
MDLExpansionPanelTest >> testExpansionIcon [
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.
	
	expansionPanel isExpanded: false.
	self assert: expansionPanel expansionIcon equals: expansionPanel expandIcon.
	
	expansionPanel isExpanded: true.
	self assert: expansionPanel expansionIcon equals: expansionPanel foldIcon
]

{ #category : #test }
MDLExpansionPanelTest >> testIcon [
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.
	
	expansionPanel icon: 'test'.
	
	self assert: expansionPanel expandIcon equals: 'test'.
	self assert: expansionPanel expandIcon equals: expansionPanel foldIcon.
]

{ #category : #test }
MDLExpansionPanelTest >> testIsExpanded [
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.

	self deny: expansionPanel isExpanded.
	
	expansionPanel isExpanded: true.
	self assert: expansionPanel isExpanded.
	
	expansionPanel isExpanded: false.
	self deny: expansionPanel isExpanded.
]

{ #category : #test }
MDLExpansionPanelTest >> testIsFolded [
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.

	self assert: expansionPanel isFolded.
	
	expansionPanel isExpanded: true.
	self deny: expansionPanel isFolded.
	
	expansionPanel isExpanded: false.
	self assert: expansionPanel isFolded.
]

{ #category : #test }
MDLExpansionPanelTest >> testToggleExpansion [
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.
	expansionPanel isExpanded: true.
	
	expansionPanel toggleExpansion.
	
	self deny: expansionPanel isExpanded.
	
	expansionPanel toggleExpansion.
	
	self assert: expansionPanel isExpanded.
]

{ #category : #test }
MDLExpansionPanelTest >> testUseAjaxExpansionStrategy [
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.
	
	expansionPanel useAjaxExpansionStrategy.
	
	self assert: expansionPanel expansionStrategy class equals: MDLAjaxExpansionStrategy
]

{ #category : #test }
MDLExpansionPanelTest >> testUseAjaxExpansionStrategyOnExpandOnFold [
	| expansionPanel onFoldBlock onExpandBlock |
	expansionPanel := MDLExpansionPanel new.
	onExpandBlock := [ :panel :htmlBrush |
							htmlBrush jQuery noop ].
	onFoldBlock := [ :panel :htmlBrush |
							htmlBrush jQuery noop ].
	
	expansionPanel useAjaxExpansionStrategyOnExpand: onExpandBlock onFold: onFoldBlock.
	
	self assert: expansionPanel expansionStrategy class equals: MDLAjaxExpansionStrategy.
	self assert: expansionPanel expansionStrategy onExpandBlock equals: onExpandBlock.
	self assert: expansionPanel expansionStrategy onFoldBlock equals: onFoldBlock.
]

{ #category : #test }
MDLExpansionPanelTest >> testUseHideExpansionStrategy [
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.
	
	expansionPanel useHideExpansionStrategy.
	
	self assert: expansionPanel expansionStrategy class equals: MDLHideExpansionStrategy
]

{ #category : #test }
MDLExpansionPanelTest >> testUseLazyExpansionStrategy [
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.
	
	expansionPanel useLazyExpansionStrategy.
	
	self assert: expansionPanel expansionStrategy class equals: MDLLazyExpansionStrategy
]
