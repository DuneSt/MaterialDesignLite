"
I represent an object that implement #tableItems
"
Class {
	#name : #MDLExamplePaginationItem,
	#superclass : #GRObject,
	#instVars : [
		'firstName',
		'lastName'
	],
	#category : 'Material-Design-Lite-Demo-Utils'
}

{ #category : #'instance creation' }
MDLExamplePaginationItem class >> firstName: aString lastName: anotherString [
	^ self new
		firstName: aString;
		lastName: anotherString;
		yourself
]

{ #category : #accessing }
MDLExamplePaginationItem >> firstName: aString [ 
	firstName := aString
]

{ #category : #accessing }
MDLExamplePaginationItem >> lastName: aString [ 
	lastName := aString
]

{ #category : #accessing }
MDLExamplePaginationItem >> tableItems [
	^ {firstName.
	lastName}
]
