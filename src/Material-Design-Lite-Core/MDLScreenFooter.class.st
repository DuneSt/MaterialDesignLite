"
Description
--------------------

I am a screen footer to help with the creation of a footer.
"
Class {
	#name : #MDLScreenFooter,
	#superclass : #WADecoration,
	#instVars : [
		'footer'
	],
	#category : #'Material-Design-Lite-Core'
}

{ #category : #'instance creation' }
MDLScreenFooter class >> newWithFooter: aFooter [
	^ self new
		footer: aFooter;
		yourself
]

{ #category : #accessing }
MDLScreenFooter >> footer [
	^ footer
]

{ #category : #accessing }
MDLScreenFooter >> footer: anObject [
	footer := anObject
]

{ #category : #rendering }
MDLScreenFooter >> renderContentOn: html [
	self renderNextOn: html.
	html render: footer
]
