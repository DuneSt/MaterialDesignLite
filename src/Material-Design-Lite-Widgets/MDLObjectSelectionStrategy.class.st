Class {
	#name : #MDLObjectSelectionStrategy,
	#superclass : #MDLAbstractSelectionStrategy,
	#instVars : [
		'selectedEntity'
	],
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #'instance creation' }
MDLObjectSelectionStrategy class >> on: anObject [
	^ self new
		selectedEntity: anObject;
		yourself
]

{ #category : #'as yet unclassified' }
MDLObjectSelectionStrategy >> indexOfSelectedEntityIn: aList ifNone: anInteger [ 
	self selectedEntity ifNil: [ ^ anInteger ].
	^ aList filteredElements
		indexOf: self selectedEntity
		ifAbsent: [ aList filteredElements
				detect: [ :element | aList isIncludingSelectedChildren: element ]
				ifFound: [ :element | aList filteredElements indexOf: element ]
				ifNone: [ "The selected element is not at all in the tree" 1 ] ]
]

{ #category : #'as yet unclassified' }
MDLObjectSelectionStrategy >> isSelectedEntity: anObject [ 
	^ self selectedEntity = anObject
]

{ #category : #accessing }
MDLObjectSelectionStrategy >> selectedEntity [
	^ selectedEntity
]

{ #category : #accessing }
MDLObjectSelectionStrategy >> selectedEntity: anObject [
	selectedEntity := anObject
]
