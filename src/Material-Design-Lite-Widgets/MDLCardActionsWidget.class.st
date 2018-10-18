"
Widget for actions
"
Class {
	#name : #MDLCardActionsWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'componentOrBlocks',
		'bordered'
	],
	#category : 'Material-Design-Lite-Widgets-Cards'
}

{ #category : #adding }
MDLCardActionsWidget >> addComponentOrBlock: aComponentOrBlock [
	componentOrBlocks add: aComponentOrBlock
]

{ #category : #options }
MDLCardActionsWidget >> beBordered [
	bordered := true
]

{ #category : #initialization }
MDLCardActionsWidget >> initialize [
	super initialize.
	bordered := false.
	componentOrBlocks := OrderedCollection new
]

{ #category : #rendering }
MDLCardActionsWidget >> renderContentOn: html [
	| cardActions |
	cardActions := html mdlCardActions.
	self addPropertiesToBrush: cardActions.
	bordered
		ifTrue: [ cardActions border ].
	cardActions
		with: [ componentOrBlocks
				do: [ :aComponentOrBlock | 
					aComponentOrBlock isBlock
						ifTrue: [ aComponentOrBlock cull: html ]
						ifFalse: [ html render: aComponentOrBlock ] ] ]
]
