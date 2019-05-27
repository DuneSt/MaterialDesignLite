Class {
	#name : #MDLIconToggleTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLIconToggleTest >> testBareBrush [
	self assert: [ :html | html mdlIconToggle ] generates: '<input class="mdl-icon-toggle__input" type="checkbox"/>'
]

{ #category : #tests }
MDLIconToggleTest >> testValue [
	self assert: [ :html | html mdlIconToggle value: true ] generates: '<input class="mdl-icon-toggle__input" checked type="checkbox"/>'.
	self assert: [ :html | html mdlIconToggle value: false ] generates: '<input class="mdl-icon-toggle__input" type="checkbox"/>'
]

{ #category : #tests }
MDLIconToggleTest >> testWithContent [
	"Not on checkboxes"
]
