Class {
	#name : #MDLDisplayNoneExpansionStrategy,
	#superclass : #MDLExpansionStrategy,
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #rendering }
MDLDisplayNoneExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	html div
		class: 'mdl-expansion-panel__content';
		with: [ html mdlGrid
				with: [ html mdlCell
						size: 12;
						with: [ anExpansionPanel expandedBlock value: html ] ] ]
]

{ #category : #javascript }
MDLDisplayNoneExpansionStrategy >> toggleScriptOn: html for: anExpansionPanel [
	^ html jQuery
		script: [ :jsScript | 
			anExpansionPanel isExpanded
				ifFalse: [ jsScript << (anExpansionPanel onFoldBlock value: anExpansionPanel value: html) ]
				ifTrue: [ jsScript << (anExpansionPanel onExpandBlock value: anExpansionPanel value: html) ].
			jsScript << ((html jQuery id: anExpansionPanel id) toggleClass: 'isFolded') ]
]
