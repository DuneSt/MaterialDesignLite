"
Description
--------------------

I am a simple component allowing to resize a panel of the window. 

"
Class {
	#name : #MDLAbstractPanelResizer,
	#superclass : #WAComponent,
	#category : 'Material-Design-Lite-Extensions-Panels'
}

{ #category : #accessing }
MDLAbstractPanelResizer >> initMethodName [
	^ self subclassResponsibility
]

{ #category : #accessing }
MDLAbstractPanelResizer >> panelClass [
	^ self subclassResponsibility
]

{ #category : #rendering }
MDLAbstractPanelResizer >> renderContentOn: html [
	html div
		class: self panelClass;
		class: #resizer.
	html document addLoadScript: self initMethodName js
]
