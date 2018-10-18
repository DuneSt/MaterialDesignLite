"
I AM NOT AN USABLE COMPONENT, I AM A TOOL CLASS

I am an object used when computing children for an element. It regroups the element, its children and a flag if it is the selected branch.
"
Class {
	#name : #MDLNestedListTreeNode,
	#superclass : #Object,
	#instVars : [
		'element',
		'children',
		'selectedBranch',
		'selectedElement'
	],
	#category : 'Material-Design-Lite-Widgets-List'
}

{ #category : #'instance creation' }
MDLNestedListTreeNode class >> element: anElement children: aCollectionOfChildren selectedBranch: aBoolean selectedElement: aBooleanIfSelected [
	^ self new
		element: anElement;
		children: aCollectionOfChildren;
		selectedBranch: aBoolean;
		selectedElement: aBooleanIfSelected;
		yourself
]

{ #category : #accessing }
MDLNestedListTreeNode >> children [
	^ children
]

{ #category : #accessing }
MDLNestedListTreeNode >> children: anObject [
	children := anObject
]

{ #category : #accessing }
MDLNestedListTreeNode >> element [
	^ element
]

{ #category : #accessing }
MDLNestedListTreeNode >> element: anObject [
	element := anObject
]

{ #category : #printing }
MDLNestedListTreeNode >> printOn: aStream [
	super printOn: aStream.
	aStream nextPut: $[.
	element printOn: aStream.
	aStream nextPut: $]
]

{ #category : #accessing }
MDLNestedListTreeNode >> selectedBranch [
	^ selectedBranch
]

{ #category : #accessing }
MDLNestedListTreeNode >> selectedBranch: anObject [
	selectedBranch := anObject
]

{ #category : #accessing }
MDLNestedListTreeNode >> selectedElement [
	^ selectedElement
]

{ #category : #accessing }
MDLNestedListTreeNode >> selectedElement: anObject [
	selectedElement := anObject
]
