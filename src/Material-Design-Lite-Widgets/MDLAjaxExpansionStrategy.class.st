Class {
	#name : #MDLAjaxExpansionStrategy,
	#superclass : #MDLExpansionStrategy,
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #rendering }
MDLAjaxExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	html div
		class: 'mdl-expansion-panel__content';
		with: [ anExpansionPanel isExpanded
				ifTrue: [ html mdlGrid
						with: [ html mdlCell
								size: 12;
								with: [ anExpansionPanel expandedBlock value: html ] ] ] ]
]

{ #category : #javascript }
MDLAjaxExpansionStrategy >> toggleScriptOn: html for: anExpansionPanel [
	^ html jQuery
		script: [ :jsScript | 
			anExpansionPanel isExpanded
				ifFalse: [ jsScript << (anExpansionPanel onFoldBlock value: anExpansionPanel value: html) ]
				ifTrue: [ jsScript << (anExpansionPanel onExpandBlock value: anExpansionPanel value: html) ].
			jsScript << (html jQuery id: anExpansionPanel id) parent load
				html: [ :ajaxHtmlCanvas | 
					anExpansionPanel toggleExpansion.
					ajaxHtmlCanvas render: anExpansionPanel ];

				onComplete:
					('componentHandler.upgradeElements($("#{1}"));'
						format: {anExpansionPanel id asString}) js ]
]
