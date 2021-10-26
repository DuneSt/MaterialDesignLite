"
I am a widget trying to reproduce the behavior of a select input of a form with a WDL compatible design. 

Description
--------------------

I am a widget with a list of possibilities that can select the user. 

I MUST be used inside a form and I will execute a callback on the submit. 

I have a tricky implementation, for more informations check the implementations detail at the end of the comment. 

Public API and Key Messages
--------------------

There is many constructors in my class side. 

- #defaultSorting 		Use this method to sort the labels using the #<= operator by default
- #beAutoSubmit 		Use this method if you want to form to submit when the user select a value. Do not forget to put your widget in a form.
		
Examples
-------------------		

	MDLSelectWidget new
		possibilities: #(1 2 3 4 5 5);
		labelBlock: [ :number |  number = 5 ifTrue: [ '0' ] ifFalse: [ (number - 1) asString ] ];
		choosingText: 'Select Your Number';
		selectedObject: 3;
		defaultSorting;
		callback: [ :input |  Transcript << input; cr ];
		description: 'description';
		beAutoSubmit;
		yourself.
		
		
	MDLSelectWidget
		possibilities: #(1 2 3 4 5 5)
		inputLabel: 'Select Your Number'
		labelBlock: [ :number |  number = 5 ifTrue: [ '0' ] ifFalse: [ (number - 1) asString ] ]
		callback: [ :input |  Transcript << input; cr ]
		selectedObject: 3
		tooltip: 'description'
		sortBlock: [ :a :b | a > b ]
		
Internal Representation and Key Implementation Points.
-------------------	

    Instance Variables
	autoSubmit:  		<aBoolean>		If true, the form will be submit when the user select a value
	callback:			<aBlock>		A callback to execute on the form submit. It will take as parameter the selected object.
	choosingText:		<aString>		The label of the select input.
	customizationBlock:	<aBlock>		An optional block to customize the text field of the select widget. It will take the mdl brush as parameter and the html canvas.
	description:			<aString>		An optional tooltip for the input.
	labelBlock:			<aBlock>		A block taking in parameter an object and returning a label to show in the input.
	possibilities:			<aCollection>	The list of possibilities.
	selectedObject:		<anObject>		An optional object to select by default.
	sortBlock:			<aBlock>		An optional block to sort the objects.


Implementation Points
-------------------	

I act as a select by in fact this is just a trick. In reality I am just an text field in read only. The user cannot enter text but he can select an element of a list. The selected element will replace the text in the input. 

To use the callback I keep a temporary dictionary of all the labels and the associated objects. I should ALWAYS have only one object by label. In case the label block return an existing label, I will add a  `(X)` to the label where X is the number of occurences. 
"
Class {
	#name : #MDLSelectWidget,
	#superclass : #MDLWidget,
	#instVars : [
		'choosingText',
		'labelBlock',
		'callback',
		'selectedObject',
		'possibilities',
		'description',
		'sortBlock',
		'autoSubmit',
		'customizationBlock',
		'entryTooltip'
	],
	#category : #'Material-Design-Lite-Widgets-Form'
}

{ #category : #'instance creation' }
MDLSelectWidget class >> possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock [
	^ self
		possibilities: aColl
		inputLabel: aLabel
		labelBlock: aLabelBlock
		callback: aBlock
		selectedObject: nil
]

{ #category : #'instance creation' }
MDLSelectWidget class >> possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject [
	^ self
		possibilities: aColl
		inputLabel: aLabel
		labelBlock: aLabelBlock
		callback: aBlock
		selectedObject: anObject
		tooltip: nil
]

{ #category : #'instance creation' }
MDLSelectWidget class >> possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject tooltip: aString [
	^ self
		possibilities: aColl
		inputLabel: aLabel
		labelBlock: aLabelBlock
		callback: aBlock
		selectedObject: anObject
		tooltip: aString
		sortBlock: nil
]

{ #category : #'instance creation' }
MDLSelectWidget class >> possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject tooltip: aString sortBlock: aSortBlock [
	^ self new
		choosingText: aLabel;
		labelBlock: aLabelBlock;
		callback: aBlock;
		selectedObject: anObject;
		possibilities: aColl;
		description: aString;
		sortBlock: aSortBlock;
		yourself
]

{ #category : #'labelMap - generation' }
MDLSelectWidget >> addLabelMapEntryFor: anElem version: anInteger into: aDictionary [
	| label |
	label := self labelFor: anElem version: anInteger.
	aDictionary at: label ifPresent: [ :lab | self addLabelMapEntryFor: anElem version: anInteger + 1 into: aDictionary ] ifAbsent: [ aDictionary at: label put: anElem ].
	self flag: #pharo6.	"at:ifPresent:ifAbsentPut: is only available in Pharo 6 :( Improve this when the minimal Pharo version required will be Pharo 6."
	^ aDictionary
]

{ #category : #accessing }
MDLSelectWidget >> autoSubmit [
	^ autoSubmit ifNil: [ autoSubmit := false ]
]

{ #category : #accessing }
MDLSelectWidget >> autoSubmit: anObject [
	autoSubmit := anObject
]

{ #category : #'public api' }
MDLSelectWidget >> beAutoSubmit [
	"With this option the select widget will submit on a user selection. Do not forget to put your widget in a form."

	self autoSubmit: true
]

{ #category : #'labelMap - generation' }
MDLSelectWidget >> buildLabelMap [
	^ self possibilities
		inject: OrderedDictionary new
		into: [ :dico :elem | self addLabelMapEntryFor: elem version: 0 into: dico ]
]

{ #category : #accessing }
MDLSelectWidget >> callback [
	^ callback
]

{ #category : #'public api' }
MDLSelectWidget >> callback: aBlockOrSymbol [
	"Callback to execute on the form submit."

	callback := aBlockOrSymbol
]

{ #category : #accessing }
MDLSelectWidget >> choosingText [
	^ choosingText
]

{ #category : #'public api' }
MDLSelectWidget >> choosingText: aString [
	"The label of the select input."

	choosingText := aString
]

{ #category : #accessing }
MDLSelectWidget >> customizationBlock [
	^ customizationBlock
]

{ #category : #accessing }
MDLSelectWidget >> customizationBlock: anObject [
	customizationBlock := anObject
]

{ #category : #accessing }
MDLSelectWidget >> defaultValueBasedOn: aLabelMap [
	(self selectedObject isNil and: [ self possibilities isEmpty ]) ifTrue: [ ^ nil ].
	
	^ aLabelMap
		keyAtValue: (self selectedObject ifNil: [ self possibilities first ])
		ifAbsent: [ self error: 'The selected object is not in the possibilities collection.' ]
]

{ #category : #accessing }
MDLSelectWidget >> description [
	^ description
]

{ #category : #'public api' }
MDLSelectWidget >> description: aString [
	"An optional tooltip for the input."

	description := aString
]

{ #category : #accessing }
MDLSelectWidget >> entryTooltip [
	^ entryTooltip
]

{ #category : #accessing }
MDLSelectWidget >> entryTooltip: aBlockOrSymbol [
	entryTooltip := aBlockOrSymbol
]

{ #category : #private }
MDLSelectWidget >> idForMenuItemLabelled: aLabel inSelectWith: anId [
	^ anId , 'entry' , aLabel
]

{ #category : #initialization }
MDLSelectWidget >> initialize [
	super initialize.
	
	"In case the user does not set any possibilities, show a disable select widget instead of throwing an error during the redering because the possibilities are nil instead of an empty collection."
	possibilities := #()
]

{ #category : #javascript }
MDLSelectWidget >> jsSelectInitialization [
	^ 'getmdlSelect.init("#' , self id , '");'
	" this ->'document.addEventListener('DOMNodeInserted', function (ev) { componentHandler.upgradeDom(); }, false);' must never add. It's bad pratice. 
	Launch yourself componentHandler.upgradeDom() OR add ONLY ONE TIME at the document this eventListener"
]

{ #category : #accessing }
MDLSelectWidget >> labelBlock [
	^ labelBlock
]

{ #category : #'public api' }
MDLSelectWidget >> labelBlock: aBlockOrSymbol [
	"A block taking in parameter an object and returning a label to show in the input."

	labelBlock := aBlockOrSymbol
]

{ #category : #accessing }
MDLSelectWidget >> labelFor: anObject [
	^ self labelBlock ifNil: [ anObject asString ] ifNotNil: [ :blk | blk value: anObject ]
]

{ #category : #'labelMap - generation' }
MDLSelectWidget >> labelFor: anElem version: anInteger [
	^ String
		streamContents: [ :s | 
			s nextPutAll: (self labelFor: anElem).
			anInteger = 0
				ifFalse: [ s
						nextPutAll: ' (';
						print: anInteger;
						nextPut: $) ] ]
]

{ #category : #'public api - seaside compatibility' }
MDLSelectWidget >> labels: aBlockOrSymbol [
	"This method is here to match at least a minimum with the seaside select API."

	self labelBlock: aBlockOrSymbol
]

{ #category : #'public api - seaside compatibility' }
MDLSelectWidget >> list: aCollection [
	"This method is here to match at least a minimum with the seaside select API."

	self possibilities: aCollection
]

{ #category : #accessing }
MDLSelectWidget >> possibilities [
	^ possibilities
]

{ #category : #'public api' }
MDLSelectWidget >> possibilities: aCollection [
	"The list of possibilities."

	possibilities := aCollection
]

{ #category : #rendering }
MDLSelectWidget >> renderArrowIconFor: anId on: html [
	html label
		for: anId;
		with: [ html mdlIcon
				toggle;
				with: #keyboard_arrow_down ]
]

{ #category : #rendering }
MDLSelectWidget >> renderContentOn: html [
	self ensureId: html.
	html mdlTextFieldContainer
		class: #'mdl-select';
		id: self id;
		floatingLabel;
		with: [ | fieldId labelMap |
			self
				renderTextFieldFor: (fieldId := html nextId) withMap: (labelMap := self buildLabelMap) on: html;
				renderArrowIconFor: fieldId on: html;
				renderLabelFor: fieldId on: html;
				renderPossibilitiesFor: fieldId withMap: labelMap on: html;
				renderTooltipFor: fieldId on: html.
			labelMap keysAndValuesDo: [ :label :object | self renderMenuTooltipFor: object at: (self idForMenuItemLabelled: label inSelectWith: fieldId) on: html ] ].
	html script: self jsSelectInitialization
]

{ #category : #rendering }
MDLSelectWidget >> renderLabelFor: anId on: html [
	self choosingText isEmptyOrNil ifTrue: [ ^ self ].
	
	html mdlTextFieldLabel
		for: anId;
		with: self choosingText
]

{ #category : #rendering }
MDLSelectWidget >> renderMenuTooltipFor: anItem at: anId on: html [
	| helpText |
	(self entryTooltip isNil or: [ self entryTooltip argumentCount = 1 and: [ (helpText := self entryTooltip value: anItem) isEmptyOrNil ] ]) ifTrue: [ ^ self ].
		
	html mdlTooltip
		large;
		for: anId;
		with:
				(self entryTooltip argumentCount = 1
						ifTrue: [ helpText ]
						ifFalse: [ self entryTooltip mdlCull: anItem cull: html ])
]

{ #category : #rendering }
MDLSelectWidget >> renderPossibilitiesFor: anId withMap: aLabelMap on: html [
	aLabelMap ifEmpty: [ ^ self ].
	
	html mdlMenu
		for: anId;
		bottomLeft;
		with: [ (self sortBlock ifNil: [ aLabelMap keys ] ifNotNil: [ :blk | aLabelMap keys sort: blk ])
				do: [ :label | 
					html mdlMenuItem
						id: (self idForMenuItemLabelled: label inSelectWith: anId);
						with: label ] ]
]

{ #category : #rendering }
MDLSelectWidget >> renderTextFieldFor: anId withMap: aLabelMap on: html [
	| textField |
	(textField := html mdlTextFieldInput)
		id: anId;
		value: (self defaultValueBasedOn: aLabelMap);
		disabled: self possibilities isEmpty;
		readonly: true;
		tabIndex: '-1';
		noAutocomplete;
		callback: [ :input | self callback ifNotNil: [ :cb | cb value: (aLabelMap at: input) ] ];
		onChange: 'submit()' if: self autoSubmit;
		type: 'text'.
	self customizationBlock ifNotNil: [ :bl | bl mdlCull: textField cull: html ]
]

{ #category : #rendering }
MDLSelectWidget >> renderTooltipFor: anId on: html [
	self description ifNil: [ ^ self ].
	
	html mdlTooltip
		for: anId;
		large;
		with:
			(self description isBlock
				ifTrue: [ self description value: html ]
				ifFalse: [ self description ])
]

{ #category : #'public api - seaside compatibility' }
MDLSelectWidget >> selected: anObject [
	"This method is here to match at least a minimum with the seaside select API."

	self selectedObject: anObject
]

{ #category : #accessing }
MDLSelectWidget >> selectedObject [
	^ selectedObject value
]

{ #category : #'public api' }
MDLSelectWidget >> selectedObject: anObject [
	"An optional object to select by default."

	selectedObject := anObject
]

{ #category : #accessing }
MDLSelectWidget >> sortBlock [
	^ sortBlock
]

{ #category : #'public api' }
MDLSelectWidget >> sortBlock: aBlock [
	"An optional block to sort the objects."

	sortBlock := aBlock
]

{ #category : #'public api' }
MDLSelectWidget >> standardSorting [
	"Use the default #<= on the objects values directly."

	self sortBlock: [ :a :b | a value <= b value ]
]
