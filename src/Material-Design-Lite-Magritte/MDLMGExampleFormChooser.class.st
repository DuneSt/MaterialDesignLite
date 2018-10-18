Class {
	#name : #MDLMGExampleFormChooser,
	#superclass : #GRObject,
	#instVars : [
		'layoutStyle',
		'validationMessageStyle'
	],
	#category : 'Material-Design-Lite-Magritte-Examples'
}

{ #category : #'magritte descriptions' }
MDLMGExampleFormChooser >> descriptionContainer [
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: MDLMAFormRenderer;
		yourself
]

{ #category : #accessing }
MDLMGExampleFormChooser >> isLayoutStyleFormInline [
	^ self layoutStyle = 'form-inline'
]

{ #category : #accessing }
MDLMGExampleFormChooser >> isValidationMessageStyleBoth [
	^ self validationMessageStyle = 'Inline and top validation messages'
]

{ #category : #accessing }
MDLMGExampleFormChooser >> isValidationMessageStyleInline [
	^ self isValidationMessageStyleTop not or: [ self isValidationMessageStyleBoth ]
]

{ #category : #accessing }
MDLMGExampleFormChooser >> isValidationMessageStyleTop [
	^ self validationMessageStyle = 'top validation messages' or: [ self isValidationMessageStyleBoth ]
]

{ #category : #accessing }
MDLMGExampleFormChooser >> layoutStyle [
	^ layoutStyle ifNil: [ layoutStyle := self layoutStyles first ]
]

{ #category : #accessing }
MDLMGExampleFormChooser >> layoutStyle: anObject [
	layoutStyle := anObject
]

{ #category : #'magritte descriptions' }
MDLMGExampleFormChooser >> layoutStyleDescription [
	<magritteDescription>
	^ MASingleOptionDescription new 
		label: 'Layout styles';
		accessor: #layoutStyle;
		options: self layoutStyles;
		componentClass: MDLMARadioGroupComponent;
		beRequired;
		yourself
]

{ #category : #options }
MDLMGExampleFormChooser >> layoutStyles [
	^ Array with: 'form-vertical' with: 'form-inline' with: 'form-search' with: 'form-horizontal'
]

{ #category : #printing }
MDLMGExampleFormChooser >> optionsSelectedString [
	^ layoutStyle, ', ', validationMessageStyle
]

{ #category : #accessing }
MDLMGExampleFormChooser >> validationMessageStyle [
	^ validationMessageStyle ifNil: [ validationMessageStyle := self validationMessageStyles first ]
]

{ #category : #accessing }
MDLMGExampleFormChooser >> validationMessageStyle: anObject [
	validationMessageStyle := anObject
]

{ #category : #'magritte descriptions' }
MDLMGExampleFormChooser >> validationMessageStyleDescription [
	<magritteDescription>
	^ MASingleOptionDescription new 
		label: 'Error message styles';
		accessor: #validationMessageStyle;
		options: self validationMessageStyles;
		componentClass: MDLMASelectListRowsComponent;
		beRequired;
		yourself
]

{ #category : #options }
MDLMGExampleFormChooser >> validationMessageStyles [
	^ Array with: 'inline validation messages' with: 'top validation messages' with: 'Inline and top validation messages'
]
