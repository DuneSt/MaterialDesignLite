Class {
	#name : #MDLSwitchLabelTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLSwitchLabelTest >> testBareBrush [
	self assert: [ :html | html mdlSwitchLabel ] generates: '<span class="mdl-switch__label"></span>'
]

{ #category : #tests }
MDLSwitchLabelTest >> testWithContent [
	self assert: [ :html | html mdlSwitchLabel: 'test' ] generates: '<span class="mdl-switch__label">test</span>'
]
