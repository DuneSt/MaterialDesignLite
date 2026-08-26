"
Description
--------------------

I am a simple component allowing to resize a panel to the right of the window. 

"
Class {
	#name : 'MDLRightPanelResizer',
	#superclass : 'MDLAbstractPanelResizer',
	#category : 'Material-Design-Lite-Extensions-Panels',
	#package : 'Material-Design-Lite-Extensions',
	#tag : 'Panels'
}

{ #category : 'accessing' }
MDLRightPanelResizer >> initMethodName [
	^ 'initRightResizer()'
]

{ #category : 'accessing' }
MDLRightPanelResizer >> panelClass [
	^ #'resizer-right'
]
