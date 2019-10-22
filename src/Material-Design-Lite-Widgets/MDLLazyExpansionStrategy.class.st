"
I am a lazy expansion strategy.
I combine the best from MDLHideExpansionStrategy and MDLAjaxExpansionStrategy to load the panel content only once when it is needed.

That is to say, if the panel is initially rendered folded, the first time the user click the expansion panel to expand it, I will perform an AJAX call to ask the server to render the content.
Then, next times the user click on the expansion panel, I will behave as MDLHideExpansionStrategy.

If the panel is initially rendered expanded, I behave exactly as MDLHideExpansionStrategy.
"
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
	currentStrategy := MDLHideExpansionStrategy new
]

{ #category : #javascript }
MDLLazyExpansionStrategy >> toggleScriptOn: htmlCanvas for: anExpansionPanel [
	anExpansionPanel isExpanded
		ifTrue: [ self switchToDisplayNoneStrategy ].
	
	^ currentStrategy toggleScriptOn: htmlCanvas for: anExpansionPanel
]
