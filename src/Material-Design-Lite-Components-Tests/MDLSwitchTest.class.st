Class {
	#name : #MDLSwitchTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLSwitchTest >> testBareBrush [
	self assert: [ :html | html mdlSwitch ] generates: '<input class="mdl-switch__input" type="checkbox"/>'
]

{ #category : #tests }
MDLSwitchTest >> testWithContent [
	"Not for this brush"
]
