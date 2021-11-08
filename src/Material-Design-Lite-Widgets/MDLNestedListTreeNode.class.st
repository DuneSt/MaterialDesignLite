"
I AM NOT AN USABLE COMPONENT, I AM A TOOL CLASS

I am an object used when computing children for an element. It regroups the element, its children and a flag if it is the selected branch.
"
Class {
	#name : #MDLNestedListTreeNode,
	#superclass : #Object,
	#instVars : [
		'list',
		'element',
		'children',
		'selectedBranch'
	],
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #'instance creation' }
MDLNestedListTreeNode class >> list: aNestedList element: anElement [
	^ self new
		list: aNestedList;
		element: anElement;
		yourself
]

{ #category : #accessing }
MDLNestedListTreeNode >> children [
	^ children ifNil: [ children := (self list childrenBlock value: self element) collect: [ :aChild | self list obtainTreeFor: aChild ] ]
]

{ #category : #accessing }
MDLNestedListTreeNode >> element [
	^ element
]

{ #category : #accessing }
MDLNestedListTreeNode >> element: anObject [
	element := anObject
]

{ #category : #accessing }
MDLNestedListTreeNode >> list [
	^ list
]

{ #category : #accessing }
MDLNestedListTreeNode >> list: anObject [
	list := anObject
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
	^ selectedBranch ifNil: [ selectedBranch := self children anySatisfy: [ :aChild | aChild selectedElement or: [ aChild selectedBranch ] ] ]
]

{ #category : #accessing }
MDLNestedListTreeNode >> selectedElement [
	^ element = self list selectedEntity
]
