Class {
	#name : #MDLDialogTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Dialog'
}

{ #category : #tests }
MDLDialogTest >> testBareBrush [
	self assert: [ :html | html mdlDialog ] generates: '<dialog class="mdl-dialog"></dialog>'
]

{ #category : #tests }
MDLDialogTest >> testCloseButtonId [
	self assert: [ :html | html mdlDialog closeButtonId: html nextId ] generates: '<dialog class="mdl-dialog" id="id1-dialog" data-closebtnid="id1"></dialog>'
]

{ #category : #tests }
MDLDialogTest >> testOpenButtonId [
	self assert: [ :html | html mdlDialog openButtonId: html nextId ] generates: '<dialog class="mdl-dialog" id="id1-dialog" data-openbtnid="id1"></dialog><script type="text/javascript">newDialog("id1-dialog");</script>'
]

{ #category : #tests }
MDLDialogTest >> testWithContent [
	self assert: [ :html | html mdlDialog with: 'Test' ] generates: '<dialog class="mdl-dialog">Test</dialog>'
]
