Class {
	#name : #MDLMultilineTextFieldTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLMultilineTextFieldTest >> testBareBrush [
	self
		assert: [ :html | html mdlTextArea ]
		generates:
			'<textarea rows="auto" cols="auto" class="mdl-textfield__input"></textarea>'.
	self
		assert: [ :html | html brush: MDLMultilineTextField new ]
		generates:
			'<textarea rows="auto" cols="auto" class="mdl-textfield__input"></textarea>'
]

{ #category : #tests }
MDLMultilineTextFieldTest >> testWithContent [
	self
		assert: [ :html | html mdlTextArea: 'Test' ]
		generates:
			'<textarea rows="auto" cols="auto" class="mdl-textfield__input">Test</textarea>'.
	self
		assert: [ :html | (html brush: MDLMultilineTextField new) with: 'Test' ]
		generates:
			'<textarea rows="auto" cols="auto" class="mdl-textfield__input">Test</textarea>'
]
