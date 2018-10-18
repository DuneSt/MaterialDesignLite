Class {
	#name : #MDLMACheckboxGroupComponent,
	#superclass : #MACheckboxGroupComponent,
	#category : 'Material-Design-Lite-Magritte-Core'
}

{ #category : #rendering }
MDLMACheckboxGroupComponent >> renderEditorOn: html [
	html hiddenInput callback: [ :value | self clear ].
	self
		optionsWithIndexDo: [ :each :index | 
			| optionId |
			optionId := self optionId: index.
			html mdlCheckboxContainer
				for: optionId;
				with: [ 
					html mdlCheckbox
						id: optionId;
						value: (self selectedList includes: each);
						onTrue: [ self add: each ] onFalse: [ self remove: each ].
					html mdlCheckboxLabel: (self labelForOption: each) ] ]
		separatedBy: [  ]
]
