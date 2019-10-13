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
		id: 'head-',(self generateIdUsing: html);
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
