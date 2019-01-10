Class {
	#name : #MDLRadioLabelTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLRadioLabelTest >> testBareBrush [
	self assert: [ :html | html brush: MDLRadioLabel new ] generates: '<span class="mdl-radio__label"></span>'
]

{ #category : #tests }
MDLRadioLabelTest >> testWithContent [
	self assert: [ :html | html mdlRadioLabel: 'test' ] generates: '<span class="mdl-radio__label">test</span>'
]
