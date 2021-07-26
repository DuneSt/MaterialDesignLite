"
I am a simple component to display a MDL icon with an help text. My main purpose is to serve in a MDLNestedList to display a MDL icon.
"
Class {
	#name : #MDLListIconComponent,
	#superclass : #WAComponent,
	#instVars : [
		'label',
		'helpText'
	],
	#category : 'Material-Design-Lite-Widgets-List'
}

{ #category : #'instance creation' }
MDLListIconComponent class >> named: aString helpText: aTranslatedString [
	^ self new
		label: aString;
		helpText: aTranslatedString;
		yourself
]

{ #category : #accessing }
MDLListIconComponent >> helpText [
	^ helpText
]

{ #category : #accessing }
MDLListIconComponent >> helpText: anObject [
	helpText := anObject
]

{ #category : #accessing }
MDLListIconComponent >> label [
	^ label
]

{ #category : #accessing }
MDLListIconComponent >> label: anObject [
	label := anObject
]

{ #category : #rendering }
MDLListIconComponent >> renderContentOn: html [
	| id |
	id := html nextId.
	html mdlIcon
		id: id;
		with: self label.
		
	(self helpText isNil or: [ self helpText isEmpty ])
		ifTrue: [ ^ self ].
		
	html mdlTooltip
		large;
		for: id;
		with: [ html text: self helpText ]
]
