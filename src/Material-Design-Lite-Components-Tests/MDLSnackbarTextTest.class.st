Class {
	#name : #MDLSnackbarTextTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Snackbar'
}

{ #category : #tests }
MDLSnackbarTextTest >> testBareBrush [
	self assert: [ :html | html brush: MDLSnackbarText new ] generates: '<div class="mdl-snackbar__text"></div>'
]

{ #category : #tests }
MDLSnackbarTextTest >> testWithContent [
	"Nothing for this one."
]
