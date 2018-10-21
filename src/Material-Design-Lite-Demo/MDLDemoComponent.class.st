"
Description
--------------------

Abstract superclass of all demo components. 

I provide some conveniance methods to be used during the redering of the demo.
"
Class {
	#name : #MDLDemoComponent,
	#superclass : #WAComponent,
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #convenience }
MDLDemoComponent >> display: aComponentInstance [
	"Set a component instance as the component to display by the root component."

	self rootComponent componentToDisplay: aComponentInstance
]

{ #category : #convenience }
MDLDemoComponent >> displayInstanceOf: aComponentClass [
	"Set a component class as the component to display by the root component."

	self rootComponent displayInstanceOf: aComponentClass
]

{ #category : #accessing }
MDLDemoComponent >> rootComponent [
	^ self session rootComponent
]

{ #category : #rendering }
MDLDemoComponent >> version [
	^ self rootComponent version
]
