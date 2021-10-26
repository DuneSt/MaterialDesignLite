"
I represent a text area with material design style.
You can use all methods of MDLTextFieldWidget on me.
"
Class {
	#name : #MDLTextAreaWidget,
	#superclass : #MDLTextFieldWidget,
	#category : #'Material-Design-Lite-Widgets-Form'
}

{ #category : #options }
MDLTextAreaWidget >> columns: aNumber [
	self propertiesAt: #columns: put: (Array with: aNumber)
]

{ #category : #initialization }
MDLTextAreaWidget >> initialize [
	super initialize.
	brush := MDLTextArea new
]

{ #category : #options }
MDLTextAreaWidget >> rows: aNumber [
	self propertiesAt: #rows: put: (Array with: aNumber)
]
