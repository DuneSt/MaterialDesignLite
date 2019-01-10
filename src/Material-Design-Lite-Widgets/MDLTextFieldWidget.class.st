"
I represent a text input field widget
"
Class {
	#name : #MDLTextFieldWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'label',
		'brush',
		'isExpandable',
		'isFloatingLabel',
		'patternErrorMessage',
		'errorMessage'
	],
	#category : 'Material-Design-Lite-Widgets-Form'
}

{ #category : #'instance creation' }
MDLTextFieldWidget class >> labeled: aString callback: aBlock [
	^ self labeled: aString callback: aBlock floatingLabel: false
]

{ #category : #'instance creation' }
MDLTextFieldWidget class >> labeled: aString callback: aBlock floatingLabel: aBoolean [
	^ self
		labeled: aString
		callback: aBlock
		floatingLabel: aBoolean
		expandable: false
]

{ #category : #'instance creation' }
MDLTextFieldWidget class >> labeled: aString callback: aBlock floatingLabel: aBoolean expandable: aBoolean2 [
	^ self new
		label: aString;
		callback: aBlock;
		floatingLabelIf: aBoolean;
		expandableIf: aBoolean2;
		yourself
]

{ #category : #options }
MDLTextFieldWidget >> beExpandable [
	isExpandable := true
]

{ #category : #options }
MDLTextFieldWidget >> beFloatingLabel [
	isFloatingLabel := true
]

{ #category : #options }
MDLTextFieldWidget >> callback: aBlock [
	self propertiesAt: #callback: put: (Array with: aBlock)
]

{ #category : #accessing }
MDLTextFieldWidget >> errorMessage [
	^ errorMessage ifNil: [ errorMessage := '' ]
]

{ #category : #accessing }
MDLTextFieldWidget >> errorMessage: aString [
	errorMessage := aString
]

{ #category : #accessing }
MDLTextFieldWidget >> errorMessage: aString if: aBoolean [
	aBoolean
		ifTrue: [ errorMessage := aString ]
]

{ #category : #options }
MDLTextFieldWidget >> expandableIf: aBoolean [
	aBoolean
		ifTrue: [ self beExpandable ]
]

{ #category : #options }
MDLTextFieldWidget >> floatingLabelIf: aBoolean [
	aBoolean
		ifTrue: [ self beFloatingLabel ]
]

{ #category : #initialization }
MDLTextFieldWidget >> initialize [
	super initialize.
	brush := MDLTextFieldInput new.
	isExpandable := false.
	isFloatingLabel := false.
	patternErrorMessage := ''
]

{ #category : #accessing }
MDLTextFieldWidget >> label [
	^ label
]

{ #category : #accessing }
MDLTextFieldWidget >> label: aString [
	label := aString
]

{ #category : #options }
MDLTextFieldWidget >> on: aSymbol of: anObject [
	self propertiesAt: #on:of: put: (Array with: aSymbol with: anObject)
]

{ #category : #options }
MDLTextFieldWidget >> onChange: anObject [
	self propertiesAt: #onChange: put: (Array with: anObject)
]

{ #category : #options }
MDLTextFieldWidget >> onEnter: anObject [
	self propertiesAt: #onEnter: put: (Array with: anObject)
]

{ #category : #options }
MDLTextFieldWidget >> onKeyUp: anObject [
	self propertiesAt: #onKeyUp: put: (Array with: anObject)
]

{ #category : #options }
MDLTextFieldWidget >> onSubmit: anObject [
	self propertiesAt: #onSubmit: put: (Array with: anObject)
]

{ #category : #options }
MDLTextFieldWidget >> pattern: anObject [
	self propertiesAt: #pattern: put: (Array with: anObject)
]

{ #category : #options }
MDLTextFieldWidget >> pattern: aPattern errorMessage: aString [
	"patternsDictionary at: anObject put: aString"

	self pattern: aPattern.
	patternErrorMessage := aString
]

{ #category : #options }
MDLTextFieldWidget >> readonly: aBoolean [
	self propertiesAt: #readonly: put: (Array with: aBoolean)
]

{ #category : #rendering }
MDLTextFieldWidget >> renderContentOn: html [
	| inputId |
	self id ifNotNil: [ :aString | inputId := aString ] ifNil: [ inputId := html nextId ].
	html mdlTextFieldContainer
		class: (self properties at: #class: ifAbsent: [ '' ]);
		beFloatingLabelIf: isFloatingLabel;
		beExpandableIf: isExpandable;
		with: [ 
					label
						ifNotNil: [ 
							html mdlTextFieldLabel
								for: inputId;
								with: label ].
					html
						brush:
							(brush
								id: inputId;
								yourself).
					self addPropertiesToBrush: brush.
					patternErrorMessage ifNotEmpty: [ html mdlTextFieldError: patternErrorMessage ].
					self errorMessage ifNotEmpty: [ :message | html mdlTextFieldError: message ] ]
]

{ #category : #options }
MDLTextFieldWidget >> required [
	self propertiesAt: #required put: Array new
]

{ #category : #options }
MDLTextFieldWidget >> size: anObject [
	self propertiesAt: #size: put: (Array with: anObject)
]

{ #category : #options }
MDLTextFieldWidget >> type: anObject [
	self propertiesAt: #type: put: (Array with: anObject)
]

{ #category : #options }
MDLTextFieldWidget >> value: anObject [
	self propertiesAt: #value: put: (Array with: anObject)
]
