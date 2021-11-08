Class {
	#name : #MDLAbstractLayoutSection,
	#superclass : #MDLWidget,
	#instVars : [
		'layout'
	],
	#category : 'Material-Design-Lite-Widgets-Header'
}

{ #category : #accessing }
MDLAbstractLayoutSection >> layout [
	^ layout
]

{ #category : #accessing }
MDLAbstractLayoutSection >> layout: anObject [
	layout := anObject
]

{ #category : #rendering }
MDLAbstractLayoutSection >> renderContentOn: html [
	self subclassResponsibility
]
