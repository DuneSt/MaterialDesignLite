"
Description
--------------------

I am a brush to create a 
"
Class {
	#name : #MDLIconComponent,
	#superclass : #WAComponent,
	#instVars : [
		'iconName'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #accessing }
MDLIconComponent >> iconName [
	^ iconName
]

{ #category : #accessing }
MDLIconComponent >> iconName: anObject [
	iconName := anObject
]

{ #category : #rendering }
MDLIconComponent >> renderContentOn: html [
	iconName ifNotNil: [ html mdlIcon: iconName ] ifNil: [ html text: 'No icon name set' ]
]
