Class {
	#name : #MDLSpinnerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-loading'
}

{ #category : #tests }
MDLSpinnerTest >> testBareBrush [
	self assert: [ :html | html mdlSpinner ] generates: '<div class="mdl-spinner mdl-js-spinner"></div>'
]

{ #category : #tests }
MDLSpinnerTest >> testIsActive [
	self assert: [ :html | html mdlSpinner active ] generates: '<div class="mdl-spinner mdl-js-spinner is-active"></div>'
]

{ #category : #tests }
MDLSpinnerTest >> testSingleColor [
	self assert: [ :html | html mdlSpinner singleColor ] generates: '<div class="mdl-spinner mdl-js-spinner mdl-spinner--single-color"></div>'
]

{ #category : #tests }
MDLSpinnerTest >> testWithContent [
	"Not for spinners."
]
