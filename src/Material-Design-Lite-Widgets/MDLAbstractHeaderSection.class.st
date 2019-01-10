Class {
	#name : #MDLAbstractHeaderSection,
	#superclass : #MDLLinkingLayoutSection,
	#instVars : [
		'brush'
	],
	#category : 'Material-Design-Lite-Widgets-Header'
}

{ #category : #initialization }
MDLAbstractHeaderSection >> initialize [
	super initialize.
	brush := MDLLayoutHeader new
]
