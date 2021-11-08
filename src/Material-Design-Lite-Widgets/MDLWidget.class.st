Class {
	#name : #MDLWidget,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'value'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #initialize }
MDLWidget class >> id: aStringID [
	^self id: aStringID value: true
]

{ #category : #initialize }
MDLWidget class >> id: aStringID value: aBooleanValue [
	^self new 
		id: aStringID; 
		value: aBooleanValue; 
		yourself
]

{ #category : #id }
MDLWidget >> ensureId: html [
	self id ifNil: [ self id: html nextId ]
]

{ #category : #accessing }
MDLWidget >> id [
	^ id
]

{ #category : #accessing }
MDLWidget >> id: anObject [
	id := anObject
]

{ #category : #actions }
MDLWidget >> restoreFromSnapshot: anObject [
	| oldId |
	oldId := self id.
	super restoreFromSnapshot: anObject.
	self id: oldId
]

{ #category : #accessing }
MDLWidget >> value [
	^ value
]

{ #category : #accessing }
MDLWidget >> value: anObject [
	value := anObject
]
