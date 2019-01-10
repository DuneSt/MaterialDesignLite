"
Description
--------------------

Utility component to illustrate the nested list icon displaying..
"
Class {
	#name : #MDLNestedListIconExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'isRepresentingClass'
	],
	#category : #'Material-Design-Lite-Demo-Utils'
}

{ #category : #'instance creation' }
MDLNestedListIconExampleComponent class >> isRepresentingClass: aBoolean [
	^ self new
		isRepresentingClass: aBoolean;
		yourself
]

{ #category : #accessing }
MDLNestedListIconExampleComponent >> isRepresentingClass [
	^ isRepresentingClass
]

{ #category : #accessing }
MDLNestedListIconExampleComponent >> isRepresentingClass: anObject [
	isRepresentingClass := anObject
]

{ #category : #rendering }
MDLNestedListIconExampleComponent >> renderContentOn: html [
	html
		mdlIcon:
			(self isRepresentingClass
				ifTrue: [ 'copyright' ]
				ifFalse: [ 'label_outline' ]).
	html text: '  '
]
