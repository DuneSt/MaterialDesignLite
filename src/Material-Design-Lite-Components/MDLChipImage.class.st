"
Description
--------------------

I am a tag to display an image on a mdl chip.

Example
--------------------

	""A Chip with an image""
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: [ 
					html mdlChipImage
						url: 'https://lh4.googleusercontent.com/-ToY4At__mZ4/AAAAAAAAAAI/AAAAAAAAAF0/Ah1JqF_XDcc/photo.jpg?sz=128';
						altText: 'Profile image'.
					html text: 'Example Chip' ].
"
Class {
	#name : #MDLChipImage,
	#superclass : #WAImageTag,
	#category : #'Material-Design-Lite-Components-Chips'
}

{ #category : #public }
MDLChipImage >> with: anObject [
	self beChipDecoration. "Cannot do it at the initialization because it need the canvas."
	super with: anObject
]
