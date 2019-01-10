"
MDL component class for a MAMemoDescription
"
Class {
	#name : #MDLMATextAreaComponent,
	#superclass : #MATextAreaComponent,
	#category : 'Material-Design-Lite-Magritte-Core'
}

{ #category : #rendering }
MDLMATextAreaComponent >> renderEditorOn: html [
	| inputId |
	inputId := self labelId.
	html mdlTextFieldContainer
		style: 'display: block';
		with: [ html mdlTextArea
				id: inputId;
				rows: self magritteDescription lineCount;
				on: #string of: self.
			html mdlTextFieldLabel
				for: inputId;
				with: self magritteDescription label ]
]
