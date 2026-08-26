Class {
	#name : 'MDLFooterComponentsSection',
	#superclass : 'MDLFooterAbstractSection',
	#instVars : [
		'components'
	],
	#category : 'Material-Design-Lite-Widgets-Footer',
	#package : 'Material-Design-Lite-Widgets',
	#tag : 'Footer'
}

{ #category : 'adding' }
MDLFooterComponentsSection >> addComponents: aComponentsCollection [
	components := aComponentsCollection 
]

{ #category : 'rendering' }
MDLFooterComponentsSection >> renderSectionOn: html [
	components do: [ :aComponent | html render: aComponent ]
]
