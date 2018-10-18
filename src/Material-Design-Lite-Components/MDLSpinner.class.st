"
Description
--------------------

The Material Design Lite (MDL) spinner component is an enhanced replacement for the classic ""wait cursor"" .

Example
--------------------

	html mdlSpinner active singleColor
"
Class {
	#name : #MDLSpinner,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Loading'
}

{ #category : #options }
MDLSpinner >> active [
	self class: 'is-active'
]

{ #category : #initialization }
MDLSpinner >> initialize [
	super 	initialize.
	self class: 'mdl-spinner'.
	self class: 'mdl-js-spinner'
]

{ #category : #options }
MDLSpinner >> singleColor [
	self class: 'mdl-spinner--single-color'
]
