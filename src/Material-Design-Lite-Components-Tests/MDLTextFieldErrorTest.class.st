Class {
	#name : #MDLTextFieldErrorTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLTextFieldErrorTest >> testBareBrush [
	self assert: [ :html | html brush: MDLTextFieldError new ] generates: '<span class="mdl-textfield__error"></span>'
]

{ #category : #tests }
MDLTextFieldErrorTest >> testWithContent [
	self assert: [ :html | html mdlTextFieldError: 'test' ] generates: '<span class="mdl-textfield__error">test</span>'
]
