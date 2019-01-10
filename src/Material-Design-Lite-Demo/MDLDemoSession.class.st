"
Description
--------------------

Simple session for the demo application. I save the root component to help with the application management.

Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	rootComponent:		<aComponent>	The root component of the demo. Should be a MDLDemo instance.

"
Class {
	#name : #MDLDemoSession,
	#superclass : #WASession,
	#instVars : [
		'rootComponent'
	],
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLDemoSession >> rootComponent [
	^ rootComponent
]

{ #category : #accessing }
MDLDemoSession >> rootComponent: anObject [
	rootComponent := anObject
]
