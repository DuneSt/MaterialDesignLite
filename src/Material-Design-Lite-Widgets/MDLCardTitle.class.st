"
I represent a widget for card title
"
Class {
	#name : #MDLCardTitle,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'level',
		'title'
	],
	#category : 'Material-Design-Lite-Widgets-Cards'
}

{ #category : #'instance creation' }
MDLCardTitle class >> newWithTitle: aString level: aNumber [
	^ self new
		title: aString;
		level: aNumber;
		yourself
]

{ #category : #'instance creation' }
MDLCardTitle class >> newWithTitle: aString level: aNumber class: cssClasses [
	^ self new
		title: aString;
		level: aNumber;
		class: cssClasses;
		yourself
]

{ #category : #initialization }
MDLCardTitle >> initialize [
	super initialize.
	level := 2.
]

{ #category : #accessing }
MDLCardTitle >> level [
	^ level
]

{ #category : #accessing }
MDLCardTitle >> level: anObject [
	level := anObject
]

{ #category : #rendering }
MDLCardTitle >> renderContentOn: html [
	| brush |
	brush := html mdlCardTitleContainer.
	self addPropertiesToBrush: brush.
	brush with: [ html mdlCardTitleText: self title level: self level ]
]

{ #category : #accessing }
MDLCardTitle >> title [
	^ title
]

{ #category : #accessing }
MDLCardTitle >> title: anObject [
	title := anObject
]
