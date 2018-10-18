"
Description
--------------------

I am a brush to create an action inside a snackbar.

Example
--------------------

	| snackbar |
	snackbar := html mdlSnackbar
		message: 'Action finished.';
		timeout: 3000;
		yourself.
	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		with: 'Show toast'
"
Class {
	#name : #MDLSnackbarAction,
	#superclass : #WAButtonTag,
	#category : 'Material-Design-Lite-Components-Snackbar'
}

{ #category : #initialization }
MDLSnackbarAction >> initialize [
	super initialize.
	self class: 'mdl-snackbar__action'
]
