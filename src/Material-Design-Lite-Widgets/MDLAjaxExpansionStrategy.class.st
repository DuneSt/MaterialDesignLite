"
I am display strategy that uses AJAX to reload the entire MDLExpansionPanel each time the toggle button is clicked.

Because of my behaviour, one can define an action to execute on server side either when I expand (#onExpandBlock:) or when I fold (#onFoldBlock:).
These actions can eventually modify the state of the expansion panel as the full widget is reload via AJAX.
"
Class {
	#name : #MDLAjaxExpansionStrategy,
	#superclass : #MDLExpansionStrategy,
	#instVars : [
		'onFoldBlock',
		'onExpandBlock'
	],
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #initialization }
MDLAjaxExpansionStrategy >> initialize [
	super initialize.
	self
		onFoldBlock: [ :expansionPanel :htmlCanvas | htmlCanvas jQuery noop ];
		onExpandBlock: [ :expansionPanel :htmlCanvas | htmlCanvas jQuery noop ]
]

{ #category : #testing }
MDLAjaxExpansionStrategy >> isAjaxExpansionStrategy [
	^ true
]

{ #category : #accessing }
MDLAjaxExpansionStrategy >> onExpandBlock [
	^ onExpandBlock
]

{ #category : #accessing }
MDLAjaxExpansionStrategy >> onExpandBlock: anObject [
	onExpandBlock := anObject
]

{ #category : #accessing }
MDLAjaxExpansionStrategy >> onFoldBlock [
	^ onFoldBlock
]

{ #category : #accessing }
MDLAjaxExpansionStrategy >> onFoldBlock: anObject [
	onFoldBlock := anObject
]

{ #category : #rendering }
MDLAjaxExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	anExpansionPanel isExpanded
		ifTrue: [ html mdlGrid
				with: [ html mdlCell
						size: 12;
						with: [ anExpansionPanel expandedBlock value: html ] ] ]
]

{ #category : #javascript }
MDLAjaxExpansionStrategy >> toggleScriptOn: htmlCanvas for: anExpansionPanel [
	^ htmlCanvas jQuery
		script: [ :jsScript | 
			anExpansionPanel isExpanded
				ifFalse: [ jsScript << (self onFoldBlock value: anExpansionPanel value: htmlCanvas) ]
				ifTrue: [ jsScript << (self onExpandBlock value: anExpansionPanel value: htmlCanvas) ].
			jsScript << (htmlCanvas jQuery id: anExpansionPanel id) parent load
				html: [ :ajaxHtmlCanvas | 
					anExpansionPanel toggleExpansion.
					ajaxHtmlCanvas render: anExpansionPanel ];

				onComplete:
					('componentHandler.upgradeElements($("#{1}"));'
						format: {anExpansionPanel id asString}) js ]
]
