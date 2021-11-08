Class {
	#name : #MDLSortableTableHeaderState,
	#superclass : #Object,
	#instVars : [
		'nextState'
	],
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #accessing }
MDLSortableTableHeaderState class >> defaultNextState [
	^ self subclassResponsibility
]

{ #category : #'instance creation' }
MDLSortableTableHeaderState class >> for: element [
	^ self new element: element
]

{ #category : #accessing }
MDLSortableTableHeaderState >> defaultNextState [
	^ self class defaultNextState
]

{ #category : #initialization }
MDLSortableTableHeaderState >> initializeNextState [
	self nextState: (self defaultNextState new nextState: (self defaultNextState defaultNextState new nextState: self))
]

{ #category : #accessing }
MDLSortableTableHeaderState >> nextState [
	^ nextState ifNil: [ self initializeNextState. nextState ]
]

{ #category : #accessing }
MDLSortableTableHeaderState >> nextState: anObject [
	nextState := anObject
]

{ #category : #rendering }
MDLSortableTableHeaderState >> renderContentOn: html forTable: table columnIndex: i header: header [
	self subclassResponsibility 
]
