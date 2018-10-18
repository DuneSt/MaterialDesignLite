Class {
	#name : #MDLDialogWidgetSimpleWidgetMock,
	#superclass : #WAComponent,
	#category : 'Material-Design-Lite-Widgets-Tests-Dialog'
}

{ #category : #rendering }
MDLDialogWidgetSimpleWidgetMock >> renderContentOn: html [
	html text: 'This is a mock'
]
