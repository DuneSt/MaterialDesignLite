Class {
	#name : #MDLCheckboxTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLCheckboxTest >> testBareBrush [
	self assert: [ :html | html mdlCheckbox ] generates: '<input class="mdl-checkbox__input" type="checkbox"/>'
]

{ #category : #tests }
MDLCheckboxTest >> testValue [
	self assert: [ :html | html mdlCheckbox value: true ] generates: '<input class="mdl-checkbox__input" checked type="checkbox"/>'.
	self assert: [ :html | html mdlCheckbox value: false ] generates: '<input class="mdl-checkbox__input" type="checkbox"/>'.
]

{ #category : #tests }
MDLCheckboxTest >> testWithContent [
	"No content allowed in this one"
]
