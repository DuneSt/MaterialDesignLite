"
Description
--------------------

I am a mdl button that expand a menu to choose an item. When an item is selected I will refresh the page.

Examples
--------------------

	 (MDLMenuButtonWidget
		possibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann')
		label: #asString
		action: [ :o | Transcript crShow: o ]
		choosingText: 'Select an user'
		description: 'Choose a user to log into the Transcript')
		sortBlock: [ :a :b | a < b ];
		yourself
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	action:					<aBlock> 			Callback taking the selected element as parameter
	buttonContent:			<aStringOrBlock>		The content of the button. Can be a string or a block. The block takes an html canvas as parameter
	description:				<aString>			Tooltip to show on the button
	objectsPossibilities:		<aCollection>		Collection of object to select  from
	selectedObject:			<anObject>			Selected object by default
	sortBlock:				<aBlock>			A block to sort the elements of the menu
	textBlock:				<aBlock>			A block taking a possible object as parameter and returning a string to display on the menu

"
Class {
	#name : #MDLMenuButtonWidget,
	#superclass : #MDLWidget,
	#instVars : [
		'textBlock',
		'selectedObject',
		'objectsPossibilities',
		'description',
		'action',
		'sortBlock',
		'buttonContent',
		'descriptionPosition'
	],
	#category : #'Material-Design-Lite-Widgets-Menu'
}

{ #category : #'instance creation' }
MDLMenuButtonWidget class >> possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText [
	^ self possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText description: nil
]

{ #category : #'instance creation' }
MDLMenuButtonWidget class >> possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText description: aDescriptionValuable [
	^ self
		possibilities: aCollectionOfObjects
		label: aLabelBlock
		action: anAction
		selectedObject: nil
		choosingText: aText
		description: aDescriptionValuable
]

{ #category : #'instance creation' }
MDLMenuButtonWidget class >> possibilities: aCollectionOfObjects label: aLabelBlock action: anAction selectedObject: anObjectOrNil choosingText: aText [
	^ self
		possibilities: aCollectionOfObjects
		label: aLabelBlock
		action: anAction
		selectedObject: anObjectOrNil
		choosingText: aText
		description: nil
]

{ #category : #'instance creation' }
MDLMenuButtonWidget class >> possibilities: aCollectionOfObjects label: aLabelBlock action: anAction selectedObject: anObjectOrNil choosingText: aText description: aDescriptionValuable [ 
	^ self new
		choosingText: aText;
		textBlock: aLabelBlock;
		selectedObject: anObjectOrNil;
		description: aDescriptionValuable;
		action: anAction;
		objectsPossibilities: aCollectionOfObjects;
		yourself
]

{ #category : #accessing }
MDLMenuButtonWidget >> action [
	^ action
]

{ #category : #accessing }
MDLMenuButtonWidget >> action: anObject [
	action := anObject
]

{ #category : #private }
MDLMenuButtonWidget >> actionWith: anObject [
	self action ifNotNil: [ :block | block value: anObject]
]

{ #category : #accessing }
MDLMenuButtonWidget >> buttonContent [
	^ buttonContent ifNil: [ buttonContent := 'choose' ]
]

{ #category : #accessing }
MDLMenuButtonWidget >> buttonContent: aBlockOrString [
	buttonContent := aBlockOrString
]

{ #category : #accessing }
MDLMenuButtonWidget >> choosingText [
	"This method is to keep backward compatibility with old API. This might be suppress with the next major release."

	self buttonContent isString ifTrue: [ ^ self buttonContent ].
	
	self error: 'This button was not configured to render a string but was configured with a block'
]

{ #category : #accessing }
MDLMenuButtonWidget >> choosingText: aString [
	"This method is to keep backward compatibility with old API. This might be suppress with the next major release."
	
	self buttonContent: aString
]

{ #category : #accessing }
MDLMenuButtonWidget >> description [
	^ description
]

{ #category : #accessing }
MDLMenuButtonWidget >> description: anObject [
	description := anObject
]

{ #category : #options }
MDLMenuButtonWidget >> descriptionAtBottom [
	"Sets the description of the menu at its bottom."
	self descriptionPosition: #bottom
]

{ #category : #options }
MDLMenuButtonWidget >> descriptionAtLeft [
	"Sets the description of the menu at its left."
	self descriptionPosition: #left
]

{ #category : #options }
MDLMenuButtonWidget >> descriptionAtRight [
	"Sets the description of the menu at its right."
	self descriptionPosition: #right
]

{ #category : #options }
MDLMenuButtonWidget >> descriptionAtTop [
	"Sets the description of the menu at its top."
	self descriptionPosition: #top
]

{ #category : #accessing }
MDLMenuButtonWidget >> descriptionPosition [
	^ descriptionPosition ifNil: [ descriptionPosition := #bottom ]
]

{ #category : #accessing }
MDLMenuButtonWidget >> descriptionPosition: anObject [
	descriptionPosition := anObject
]

{ #category : #private }
MDLMenuButtonWidget >> labelFor: anObject [
	^ self textBlock ifNil: [ anObject asString ] ifNotNil: [ :tb | tb cull: anObject ]
]

{ #category : #accessing }
MDLMenuButtonWidget >> objectsPossibilities [
	^ objectsPossibilities
]

{ #category : #accessing }
MDLMenuButtonWidget >> objectsPossibilities: anObject [
	objectsPossibilities := anObject
]

{ #category : #accessing }
MDLMenuButtonWidget >> objectsPossibilitiesWithLabel [
	^ (self objectsPossibilities collect: [ :anObject | (self labelFor: anObject) -> anObject ]) sorted: self sortBlock
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderButtonContentOn: html [
	self buttonContent isString
		ifTrue: [ html render: self buttonContent ]
		ifFalse: [ self buttonContent cull: html ]
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderButtonOn: html [
	html div
		id: self id;
		class: 'menuButtonWidgetButton mdl-button mdl-js-button menuButtonWidgetButton';
		disabled: self objectsPossibilities isEmpty;
		with: [ self selectedObject
				ifNil: [ self renderButtonContentOn: html ]
				ifNotNil: [ :anObject | html text: (self labelFor: anObject) ].
			html mdlIcon: 'arrow_drop_down' ]
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderContentOn: html [
	self ensureId: html.
	self renderButtonOn: html.
	self renderMenuOn: html.
	self renderTooltipOn: html.
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderMenuItemOn: html withAssociation: anAssociation [
	html
		mdlMenuItem: [ 
			html anchor
				callback: [ self actionWith: anAssociation value ];
				with: [ html text: anAssociation key ] ]
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderMenuOn: html [
	html mdlMenu
		bottomLeft;
		for: self id;
		class: 'menuButtonWidgetMenu';
		with: [ self objectsPossibilitiesWithLabel do: [ :anAssociation | self renderMenuItemOn: html withAssociation: anAssociation ] ]
]

{ #category : #rendering }
MDLMenuButtonWidget >> renderTooltipOn: html [
	self description ifNil: [ ^ self ].
	
	html mdlTooltip
		for: self id;
		large;
		position: self descriptionPosition;
		with: self description
]

{ #category : #accessing }
MDLMenuButtonWidget >> selectedObject [
	^ selectedObject value
]

{ #category : #accessing }
MDLMenuButtonWidget >> selectedObject: anObject [
	selectedObject := anObject
]

{ #category : #accessing }
MDLMenuButtonWidget >> sortBlock [
	^ sortBlock ifNil: [ sortBlock := [ :a :b | a <= b ] ]
]

{ #category : #accessing }
MDLMenuButtonWidget >> sortBlock: anObject [
	sortBlock := anObject
]

{ #category : #accessing }
MDLMenuButtonWidget >> textBlock [
	^ textBlock
]

{ #category : #accessing }
MDLMenuButtonWidget >> textBlock: anObject [
	textBlock := anObject
]
