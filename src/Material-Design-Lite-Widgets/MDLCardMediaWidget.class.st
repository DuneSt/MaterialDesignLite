"
I represent a card media widget
"
Class {
	#name : #MDLCardMediaWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'content'
	],
	#category : 'Material-Design-Lite-Widgets-Cards'
}

{ #category : #'instance creation' }
MDLCardMediaWidget class >> newWith: aBlock [
	^ self new
		content: aBlock;
		yourself
]

{ #category : #accessing }
MDLCardMediaWidget >> content: aBlock [
	content := aBlock
]

{ #category : #rendering }
MDLCardMediaWidget >> renderContentOn: html [
	html mdlCardMedia: [ content value: html ]
]
