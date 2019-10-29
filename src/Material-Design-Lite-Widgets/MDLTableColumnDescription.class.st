"
I am an abstract super class to model the description of a column for a MDLTableWidget.

I hold my:
- #title which is the string to display as column name
- #idBlock which is the block that I use to generate an id. This block takes an argument which is the html canvas.
- #evaluation which is the block that I use to get the content of a cell concerning myself by providing it a row object.

My subclasses model concrete column description check them for concrete examples.
"
Class {
	#name : #MDLTableColumnDescription,
	#superclass : #Object,
	#instVars : [
		'title',
		'evaluation',
		'idBlock'
	],
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #accessing }
MDLTableColumnDescription >> evaluation [
	^ evaluation
]

{ #category : #accessing }
MDLTableColumnDescription >> evaluation: anObject [
	evaluation := anObject
]

{ #category : #private }
MDLTableColumnDescription >> generateIdUsing: html [
	^ self idBlock cull: html
]

{ #category : #accessing }
MDLTableColumnDescription >> idBlock [
	^ idBlock
]

{ #category : #accessing }
MDLTableColumnDescription >> idBlock: anObject [
	idBlock := anObject
]

{ #category : #initialization }
MDLTableColumnDescription >> initialize [
	super initialize.
	self idBlock: [ :html | html nextId ]
]

{ #category : #rendering }
MDLTableColumnDescription >> render: row on: html [
	self subclassResponsibility
]

{ #category : #rendering }
MDLTableColumnDescription >> renderHeadingOn: html [
	| heading |
	heading := html mdlTableHeading
		id: (self generateIdUsing: html);
		yourself.
	
	^ heading
]

{ #category : #accessing }
MDLTableColumnDescription >> title [
	^ title
]

{ #category : #accessing }
MDLTableColumnDescription >> title: anObject [
	title := anObject
]
