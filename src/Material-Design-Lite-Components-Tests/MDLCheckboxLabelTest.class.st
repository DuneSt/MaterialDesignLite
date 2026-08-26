Class {
	#name : 'MDLCheckboxLabelTest',
	#superclass : 'SGTAbstractBrushTest',
	#category : 'Material-Design-Lite-Components-Tests-Forms',
	#package : 'Material-Design-Lite-Components-Tests',
	#tag : 'Forms'
}

{ #category : 'tests' }
MDLCheckboxLabelTest >> testBareBrush [
	self assert: [ :html | html mdlCheckboxLabel ] generates: '<span class="mdl-checkbox__label"></span>'
]

{ #category : 'tests' }
MDLCheckboxLabelTest >> testWithContent [
	self assert: [ :html | html mdlCheckboxLabel: 'label' ] generates: '<span class="mdl-checkbox__label">label</span>'
]
