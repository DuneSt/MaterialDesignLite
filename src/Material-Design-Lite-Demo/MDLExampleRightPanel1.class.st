"
Description
--------------------

Utility component to illustrate the right panel extension.
"
Class {
	#name : #MDLExampleRightPanel1,
	#superclass : #WAComponent,
	#category : 'Material-Design-Lite-Demo-Utils'
}

{ #category : #rendering }
MDLExampleRightPanel1 >> renderContentOn: html [
	html render: 'This is the first panel'
]
