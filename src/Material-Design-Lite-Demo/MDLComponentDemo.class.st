"
Description
--------------------

I am an abstract class whose sole goal is to group components demos as my subclasses.
"
Class {
	#name : #MDLComponentDemo,
	#superclass : #MDLDemoScreen,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #testing }
MDLComponentDemo class >> isAbstract [
	^ self = MDLComponentDemo
]
