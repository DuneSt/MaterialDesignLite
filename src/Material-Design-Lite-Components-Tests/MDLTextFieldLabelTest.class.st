Class {
	#name : #MDLTextFieldLabelTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLTextFieldLabelTest >> testBareBrush [
	self assert: [ :html | html brush: MDLTextFieldLabel new ] generates: '<label class="mdl-textfield__label"></label>'
]

{ #category : #tests }
MDLTextFieldLabelTest >> testWithContent [
	self assert: [ :html | html mdlTextFieldLabel: 'test' ] generates: '<label class="mdl-textfield__label">test</label>'
]
