"
Description
--------------------

I am an abstract class whose sole goal is to group extensions demos as my subclasses.
"
Class {
	#name : #MDLExtensionsDemo,
	#superclass : #MDLDemoScreen,
	#category : #'Material-Design-Lite-Demo-Extensions'
}

{ #category : #testing }
MDLExtensionsDemo class >> isAbstract [
	^ self = MDLExtensionsDemo
]
