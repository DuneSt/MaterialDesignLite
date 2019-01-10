Class {
	#name : #MDLMGExampleFormDescription,
	#superclass : #GRObject,
	#instVars : [
		'name',
		'number',
		'bePositive'
	],
	#category : 'Material-Design-Lite-Magritte-Examples'
}

{ #category : #accessing }
MDLMGExampleFormDescription >> bePositive [
	^ bePositive ifNil: [ bePositive := true ]
]

{ #category : #accessing }
MDLMGExampleFormDescription >> bePositive: anObject [
	bePositive := anObject
]

{ #category : #'magritte descriptions' }
MDLMGExampleFormDescription >> bePositiveDescription [
	<magritteDescription>
	^ MABooleanDescription new
		checkboxLabel: 'Be positive';
		accessor: #bePositive;
		componentClass: MDLMACheckboxComponent;
		priority: 600;
		yourself
]

{ #category : #'magritte descriptions' }
MDLMGExampleFormDescription >> descriptionContainer [
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: MDLMAFormRenderer;
		yourself
]

{ #category : #accessing }
MDLMGExampleFormDescription >> name [
	^ name

]

{ #category : #accessing }
MDLMGExampleFormDescription >> name: anObject [
	name := anObject
]

{ #category : #'magritte descriptions' }
MDLMGExampleFormDescription >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		priority: 10;
		label: 'Name';
		accessor: #name;
		beRequired;
		requiredErrorMessage: 'We cannot proceed without a name.';
		comment: 'Please enter your name';
		componentClass: MDLMATextInputComponent;
		yourself
]

{ #category : #accessing }
MDLMGExampleFormDescription >> number [
	^ number
]

{ #category : #accessing }
MDLMGExampleFormDescription >> number: anObject [
	number := anObject
]

{ #category : #'magritte descriptions' }
MDLMGExampleFormDescription >> numberDescription [
	<magritteDescription>
	^ MASingleOptionDescription new
		priority: 30;
		label: 'Numbers';
		accessor: #number;
		options: (0 to: 10);
		comment: 'select your favourite number';
		addCondition: [ :v | v ~= 0 ] labelled: 'sorry we are not permitting zero to be favourite';
		addCondition: [ :v | v ~= 1 ] labelled: 'sorry we are not permitting one to be favourite';
		componentClass: MDLMASelectListRowsComponent;
		beRequired;
		yourself
]
