Class {
	#name : 'MDLDialogWidgetSimpleWidgetMock',
	#superclass : 'WAComponent',
	#category : 'Material-Design-Lite-Widgets-Tests-Dialog',
	#package : 'Material-Design-Lite-Widgets-Tests',
	#tag : 'Dialog'
}

{ #category : 'rendering' }
MDLDialogWidgetSimpleWidgetMock >> renderContentOn: html [
	html text: 'This is a mock'
]
