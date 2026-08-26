Class {
	#name : 'MDLDialogContentTest',
	#superclass : 'SGTAbstractBrushTest',
	#category : 'Material-Design-Lite-Components-Tests-Dialog',
	#package : 'Material-Design-Lite-Components-Tests',
	#tag : 'Dialog'
}

{ #category : 'tests' }
MDLDialogContentTest >> testBareBrush [
	self assert: [ :html | html mdlDialogContent ] generates: '<div class="mdl-dialog__content"></div>'
]

{ #category : 'tests' }
MDLDialogContentTest >> testWithContent [
	self assert: [ :html | html mdlDialogContent: 'Test' ] generates: '<div class="mdl-dialog__content">Test</div>'
]
