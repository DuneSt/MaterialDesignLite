"
High level widget to render a card
"
Class {
	#name : #MDLCardWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'componentOrBlocks',
		'cardActions'
	],
	#category : 'Material-Design-Lite-Widgets-Cards'
}

{ #category : #adding }
MDLCardWidget >> accentColorTitle: aString [
	self accentColorTitle: aString class: ''
]

{ #category : #adding }
MDLCardWidget >> accentColorTitle: aString class: anotherString [
	| classes |
	classes := String
		streamContents: [ :stream | 
			stream
				nextPutAll: 'mdl-color--accent';
				space;
				nextPutAll: 'mdl-color-text--accent-contrast'.
			anotherString
				ifNotEmpty: [ :string | 
					stream
						space;
						nextPutAll: string ] ].
	self title: aString class: classes
]

{ #category : #options }
MDLCardWidget >> actionsBordered [
	self cardActions beBordered
]

{ #category : #adding }
MDLCardWidget >> addAction: aComponentOrBlock [
	self cardActions addComponentOrBlock: aComponentOrBlock
]

{ #category : #adding }
MDLCardWidget >> addComponentOrBlock: aComponentOrBlock [
	componentOrBlocks add: aComponentOrBlock
]

{ #category : #adding }
MDLCardWidget >> addMedia: aBlock [
	self addComponentOrBlock: (MDLCardMediaWidget newWith: aBlock)
]

{ #category : #adding }
MDLCardWidget >> addTextContainer: aString [
	self addComponentOrBlock: (MDLCardTextContainerWidget newWithContent: aString)
]

{ #category : #adding }
MDLCardWidget >> addTextContainer: anObject class: cssClasses [
	self
		addComponentOrBlock: (MDLCardTextContainerWidget newWithContent: anObject class: cssClasses)
]

{ #category : #accessing }
MDLCardWidget >> cardActions [
	^ cardActions
		ifNil: [ cardActions := MDLCardActionsWidget new.
			self addComponentOrBlock: cardActions.
			^ cardActions ]
]

{ #category : #initialization }
MDLCardWidget >> initialize [
	super initialize.
	componentOrBlocks := OrderedCollection new.
	self class: 'mdl-card-widget'
]

{ #category : #adding }
MDLCardWidget >> primaryColorTitle: aString [
	self primaryColorTitle: aString class: ''
]

{ #category : #adding }
MDLCardWidget >> primaryColorTitle: aString class: anotherString [
	| classes |
	classes := String
		streamContents: [ :stream | 
			stream
				nextPutAll: 'mdl-color--primary';
				space;
				nextPutAll: 'mdl-color-text--primary-contrast'.
			anotherString
				ifNotEmpty: [ :string | 
					stream
						space;
						nextPutAll: string ] ].
	self title: aString class: classes
]

{ #category : #rendering }
MDLCardWidget >> renderContentOn: html [
	| card |
	card := html mdlCard.
	self addPropertiesToBrush: card.
	card with: [ self renderInnerWidgetsOn: html ]
]

{ #category : #rendering }
MDLCardWidget >> renderInnerWidgetsOn: html [
	componentOrBlocks
		do: [ :aComponentOrBlock | 
			aComponentOrBlock isBlock
				ifTrue: [ aComponentOrBlock cull: html ]
				ifFalse: [ html render: aComponentOrBlock ] ]
]

{ #category : #accessing }
MDLCardWidget >> shadow: aNumber [
	"aNumber must be between 2 and 24"

	self propertiesAt: #shadow: put: (Array with: aNumber)
]

{ #category : #adding }
MDLCardWidget >> title: aString [
	self title: aString level: 2
]

{ #category : #adding }
MDLCardWidget >> title: aString class: cssClasses [
	self title: aString level: 2 class: cssClasses
]

{ #category : #adding }
MDLCardWidget >> title: aString level: aNumber [
	self title: aString level: aNumber class: ''
]

{ #category : #adding }
MDLCardWidget >> title: aString level: aNumber class: cssClasses [
	self addComponentOrBlock: (MDLCardTitle newWithTitle: aString level: aNumber class: cssClasses)
]
