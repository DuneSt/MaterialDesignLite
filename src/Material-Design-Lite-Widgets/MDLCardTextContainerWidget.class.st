"
Widget for text container
"
Class {
	#name : #MDLCardTextContainerWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'content'
	],
	#category : 'Material-Design-Lite-Widgets-Cards'
}

{ #category : #'instance creation' }
MDLCardTextContainerWidget class >> newWithContent: anObject [
	^ self new
		content: anObject;
		yourself
]

{ #category : #'instance creation' }
MDLCardTextContainerWidget class >> newWithContent: anObject class: cssClasses [
	^ self new
		content: anObject;
		class: cssClasses;
		yourself
]

{ #category : #accessing }
MDLCardTextContainerWidget >> content: text [
	content := text
]

{ #category : #rendering }
MDLCardTextContainerWidget >> renderContentOn: html [
	| brush |
	brush := html mdlCardTextContainer.
	self addPropertiesToBrush: brush.
	brush with: content
]
