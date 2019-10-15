Class {
	#name : #MDLLazyExpansionStrategy,
	#superclass : #MDLExpansionStrategy,
	#instVars : [
		'currentStrategy'
	],
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #initialization }
MDLLazyExpansionStrategy >> initialize [
	super initialize.
	currentStrategy := MDLAjaxExpansionStrategy new
]

{ #category : #rendering }
MDLLazyExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	anExpansionPanel isExpanded
		ifTrue: [ self switchToDisplayNoneStrategy ].
	currentStrategy
		renderExpansionPanel: anExpansionPanel
		contentOn: html.
	currentStrategy isAjaxExpansionStrategy
		ifTrue: [ self switchToDisplayNoneStrategy ]
]

{ #category : #private }
MDLLazyExpansionStrategy >> switchToDisplayNoneStrategy [
	currentStrategy := MDLDisplayNoneExpansionStrategy new
]

{ #category : #javascript }
MDLLazyExpansionStrategy >> toggleScriptOn: htmlCanvas for: anExpansionPanel [
	anExpansionPanel isExpanded
		ifTrue: [ self switchToDisplayNoneStrategy ].
	
	^ currentStrategy toggleScriptOn: htmlCanvas for: anExpansionPanel
]
