"
Description
--------------------

I am a simple component allowing to resize a panel to the left of the window. 

"
Class {
	#name : #MDLLeftPanelResizer,
	#superclass : #MDLAbstractPanelResizer,
	#category : 'Material-Design-Lite-Extensions-Panels'
}

{ #category : #accessing }
MDLLeftPanelResizer >> initMethodName [
	^ 'initLeftResizer()'
]

{ #category : #accessing }
MDLLeftPanelResizer >> panelClass [
	^ #'resizer-left'
]
