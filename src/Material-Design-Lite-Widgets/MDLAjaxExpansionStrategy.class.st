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

{ #category : #javascript }
MDLAjaxExpansionStrategy >> customize: anExpansionPanelHeader in: anExpansionPanel on: html [
	anExpansionPanelHeader
		onClick:
			((html jQuery this parent find: '.mdl-expansion-panel__content') load
				html: [ :ajaxHtmlCanvas | 
					anExpansionPanel
						toggleExpansion;
						renderExpansionPanelContent: ajaxHtmlCanvas ];
				onComplete: 'componentHandler.upgradeElements(this);' js)
]

{ #category : #testing }
MDLAjaxExpansionStrategy >> isAjaxExpansionStrategy [
	^ true
]

{ #category : #rendering }
MDLAjaxExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	anExpansionPanel isExpanded
		ifTrue: [ anExpansionPanel expandedBlock value: html ]
]
