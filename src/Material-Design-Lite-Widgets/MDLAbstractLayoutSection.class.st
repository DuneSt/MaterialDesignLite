Class {
	#name : 'MDLAbstractLayoutSection',
	#superclass : 'MDLWidget',
	#instVars : [
		'layout'
	],
	#category : 'Material-Design-Lite-Widgets-Header',
	#package : 'Material-Design-Lite-Widgets',
	#tag : 'Header'
}

{ #category : 'accessing' }
MDLAbstractLayoutSection >> layout [
	^ layout
]

{ #category : 'accessing' }
MDLAbstractLayoutSection >> layout: anObject [
	layout := anObject
]

{ #category : 'rendering' }
MDLAbstractLayoutSection >> renderContentOn: html [
	self subclassResponsibility
]
