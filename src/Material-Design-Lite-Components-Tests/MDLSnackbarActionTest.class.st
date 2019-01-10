Class {
	#name : #MDLSnackbarActionTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Snackbar'
}

{ #category : #tests }
MDLSnackbarActionTest >> testBareBrush [
	self assert: [ :html | html brush: MDLSnackbarAction new ] generates: '<button class="mdl-snackbar__action" type="submit"></button>'
]

{ #category : #tests }
MDLSnackbarActionTest >> testWithContent [
	"Nothing for this one."
]
