Class {
	#name : #MDLMARadioGroupComponent,
	#superclass : #MARadioGroupComponent,
	#category : 'Material-Design-Lite-Magritte-Core'
}

{ #category : #testing }
MDLMARadioGroupComponent class >> isAbstract [
	^ false
]

{ #category : #rendering }
MDLMARadioGroupComponent >> renderEditorOn: html [
	| group |
	group := html radioGroup.
	html span
		id: self labelId;
		with: [
			self optionsWithIndexDo: [ :each :index |
				self renderOption: each
					index: index
					in: group
					on: html ]
				separatedBy: [ ] ]
]

{ #category : #rendering }
MDLMARadioGroupComponent >> renderOption: anObject index: anInteger in: aRadioGroup on: html [
	| optionId |
	optionId := self optionId: anInteger.
	html mdlRadioContainer 
		for: optionId; 
		with: [ 
			aRadioGroup mdlRadioButton 
				id: optionId;
				selected: self value = anObject;
				callback: [ self value: anObject ].
			html mdlRadioLabel: (self labelForOption: anObject)
		].
	html break



]
