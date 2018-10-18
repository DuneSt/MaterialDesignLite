"
Description
--------------------

I am a simple component allowing to resize a panel to the right of the window. 

"
Class {
	#name : #MDLRightPanelResizer,
	#superclass : #MDLAbstractPanelResizer,
	#category : 'Material-Design-Lite-Extensions-Panels'
}

{ #category : #accessing }
MDLRightPanelResizer >> initMethodName [
	^ 'initRightResizer()'
]

{ #category : #accessing }
MDLRightPanelResizer >> panelClass [
	^ #'resizer-right'
]
