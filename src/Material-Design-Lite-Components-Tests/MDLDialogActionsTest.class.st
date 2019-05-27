Class {
	#name : #MDLDialogActionsTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Dialog'
}

{ #category : #tests }
MDLDialogActionsTest >> testBareBrush [
	self assert: [ :html | html mdlDialogActions ] generates: '<div class="mdl-dialog__actions"></div>'
]

{ #category : #tests }
MDLDialogActionsTest >> testFullWidth [
	self assert: [ :html | html mdlDialogActions fullWidth ] generates: '<div class="mdl-dialog__actions mdl-dialog__actions--full-width"></div>'
]

{ #category : #tests }
MDLDialogActionsTest >> testWithContent [
	self assert: [ :html | html mdlDialogActions: 'Test' ] generates: '<div class="mdl-dialog__actions">Test</div>'
]
