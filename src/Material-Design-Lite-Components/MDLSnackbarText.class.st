"
Description
--------------------

I am a brush to create a text inside a snackbar.

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
	#name : #MDLSnackbarText,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Snackbar'
}

{ #category : #initialization }
MDLSnackbarText >> initialize [
	super initialize.
	self class: 'mdl-snackbar__text'
]
