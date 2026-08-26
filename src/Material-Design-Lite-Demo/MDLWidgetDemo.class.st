"
Description
--------------------

I am an abstract class whose sole goal is to group widgets demos as my subclasses.
"
Class {
	#name : 'MDLWidgetDemo',
	#superclass : 'MDLDemoScreen',
	#category : 'Material-Design-Lite-Demo-Widgets',
	#package : 'Material-Design-Lite-Demo',
	#tag : 'Widgets'
}

{ #category : 'testing' }
MDLWidgetDemo class >> isAbstract [
	^ self = MDLWidgetDemo
]
