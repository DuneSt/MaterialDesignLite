"
Description
--------------------

I am a brush to create a container for a dialog content.

Example
--------------------

	html mdlButton
		id: html nextId;
		raised;
		rippleEffect;
		with: 'Show second dialog'.
		
	html mdlDialog
		openButtonId: html lastId;
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You managed to open the dialog' ] ]
"
Class {
	#name : #MDLDialogContent,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Dialog'
}

{ #category : #initialization }
MDLDialogContent >> initialize [
	super initialize.
	self class: 'mdl-dialog__content'
]
