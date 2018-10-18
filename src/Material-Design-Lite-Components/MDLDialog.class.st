"
Description
--------------------

Modal windows for dedicated user input.

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
	#name : #MDLDialog,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Dialog'
}

{ #category : #'javascript generation' }
MDLDialog >> closeButtonId: id [
   self id ifNil: [ self id: id, '-dialog' ].
   self attributeAt: 'data-closebtnid' put: id. 
]

{ #category : #initialization }
MDLDialog >> initialize [
	super initialize.
	self class: 'mdl-dialog'.
]

{ #category : #'javascript generation' }
MDLDialog >> openButtonId: id [
	self id ifNil: [ self id: id , '-dialog' ].
	self attributeAt: 'data-openbtnid' put: id.
	self script: ('newDialog("' , self id , '")') js
]

{ #category : #accessing }
MDLDialog >> tag [
	^ 'dialog'
]
