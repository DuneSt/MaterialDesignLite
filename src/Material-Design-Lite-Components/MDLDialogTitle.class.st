"
Description
--------------------

I am a brush to create a dialog title.

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
	#name : #MDLDialogTitle,
	#superclass : #WAHeadingTag,
	#category : 'Material-Design-Lite-Components-Dialog'
}

{ #category : #initialization }
MDLDialogTitle >> initialize [
	super initialize.
	self level: 4.
	self class: 'mdl-dialog__title'
]
