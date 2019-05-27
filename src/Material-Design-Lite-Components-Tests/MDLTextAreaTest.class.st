Class {
	#name : #MDLTextAreaTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLTextAreaTest >> testBareBrush [
	self assert: [ :html | html mdlTextArea ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input"></textarea>'
]

{ #category : #tests }
MDLTextAreaTest >> testWithContent [
	self assert: [ :html | html mdlTextArea: 'test' ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input">test</textarea>'
]
