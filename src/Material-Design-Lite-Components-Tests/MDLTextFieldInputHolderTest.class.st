Class {
	#name : #MDLTextFieldInputHolderTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLTextFieldInputHolderTest >> testBareBrush [
	self assert: [ :html | html mdlTextFieldInput ] generates: '<input class="mdl-textfield__input" type="text"/>'
]

{ #category : #tests }
MDLTextFieldInputHolderTest >> testPattern [
	self assert: [ :html | html mdlTextFieldInput pattern: '(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$' ] generates: '<input class="mdl-textfield__input" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" type="text"/>'
]

{ #category : #tests }
MDLTextFieldInputHolderTest >> testWithContent [
	"Not with inputs"
]
