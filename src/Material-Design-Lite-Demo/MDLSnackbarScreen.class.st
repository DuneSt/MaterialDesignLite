"
I'm representing snackbar component screen
"
Class {
	#name : #MDLSnackbarScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLSnackbarScreen class >> description [
	^ 'Transient popup notifications.'
]

{ #category : #accessing }
MDLSnackbarScreen class >> icon [
	^ 'compsnackbarPng'
]

{ #category : #accessing }
MDLSnackbarScreen class >> title [
	^ 'Snackbar'
]

{ #category : #rendering }
MDLSnackbarScreen >> renderScreenContentOn: html [
	self
		render: self snackbar on: html;
		render: self toast on: html
]

{ #category : #demos }
MDLSnackbarScreen >> renderSnackbarOn: html [
	| snackbar |
	snackbar := html mdlSnackbar
		message: 'Color of the button changed';
		actionText: 'Undo';
		action: 'document.querySelector("#snackbar-button").style.backgroundColor = ""';
		timeout: 2000;
		yourself.
	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		id: 'snackbar-button';
		onClick: 'document.querySelector("#snackbar-button").style.backgroundColor = "#" + Math.floor(Math.random() * 0xFFFFFF).toString(16)' js;
		with: 'Show snackbar'
]

{ #category : #demos }
MDLSnackbarScreen >> renderToastOn: html [
	| snackbar |
	snackbar := html mdlSnackbar
		message: 'Action finished.';
		timeout: 3000;
		yourself.
	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		with: 'Show toast'
]

{ #category : #sections }
MDLSnackbarScreen >> snackbar [
	^ OrderedDictionary new
		add: 'Snackbar' -> #renderSnackbarOn:;
		yourself
]

{ #category : #sections }
MDLSnackbarScreen >> toast [
	^ OrderedDictionary new
		add: ' Toast' -> #renderToastOn:;
		yourself
]
