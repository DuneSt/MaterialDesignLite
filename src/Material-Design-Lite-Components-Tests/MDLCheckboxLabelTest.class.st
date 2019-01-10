Class {
	#name : #MDLCheckboxLabelTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLCheckboxLabelTest >> testBareBrush [
	self assert: [ :html | html mdlCheckboxLabel ] generates: '<span class="mdl-checkbox__label"></span>'
]

{ #category : #tests }
MDLCheckboxLabelTest >> testWithContent [
	self assert: [ :html | html mdlCheckboxLabel: 'label' ] generates: '<span class="mdl-checkbox__label">label</span>'
]
