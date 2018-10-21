"
Description
--------------------

I am a screen footer to help with the layout management of the screen.
"
Class {
	#name : #MDLScreenLayout,
	#superclass : #WADecoration,
	#instVars : [
		'layout'
	],
	#category : #'Material-Design-Lite-Core'
}

{ #category : #'instance creation' }
MDLScreenLayout class >> newWithLayout: aLayout [
	^ self new
		layout: aLayout;
		yourself
]

{ #category : #accessing }
MDLScreenLayout >> layout [
	^ layout
]

{ #category : #accessing }
MDLScreenLayout >> layout: anObject [
	layout := anObject
]

{ #category : #rendering }
MDLScreenLayout >> renderContentOn: html [
	layout contentBlock: [ self renderNextOn: html ].
	html render: layout
]
