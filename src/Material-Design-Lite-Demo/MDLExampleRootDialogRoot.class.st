"
Description
--------------------

I am a component to illustrate the use of the root dialog. 
"
Class {
	#name : 'MDLExampleRootDialogRoot',
	#superclass : 'WAComponent',
	#traits : 'TRootDialogRenderer',
	#classTraits : 'TRootDialogRenderer classTrait',
	#category : 'Material-Design-Lite-Demo-Utils',
	#package : 'Material-Design-Lite-Demo',
	#tag : 'Utils'
}

{ #category : 'rendering' }
MDLExampleRootDialogRoot >> renderContentOn: html [
	html div
		style: 'width: 100%; height: 100%; background-color: #ECEFF1;';
		with: MDLExampleRootDialogUser new.
	self renderEmptyGenericDialogOn: html
]
