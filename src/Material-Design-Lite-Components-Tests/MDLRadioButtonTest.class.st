Class {
	#name : #MDLRadioButtonTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLRadioButtonTest >> testBareBrush [
	self assert: [ :html | html mdlRadioButton ] generates: '<input class="mdl-radio__button" type="radio"/>'
]

{ #category : #tests }
MDLRadioButtonTest >> testWithContent [
	"Not with this tag"
]
