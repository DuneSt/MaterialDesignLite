"
Description
--------------------

Utility component to illustrate the right panel extension.
"
Class {
	#name : #MDLExampleRightPanel2,
	#superclass : #WAComponent,
	#category : #'Material-Design-Lite-Demo-Utils'
}

{ #category : #rendering }
MDLExampleRightPanel2 >> renderContentOn: html [
	html render: 'This is the second panel'
]
