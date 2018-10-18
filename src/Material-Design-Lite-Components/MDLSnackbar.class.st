"
Description
--------------------

Transient popup notifications.

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
		

Internal Representation and Key Implementation Points.
--------------------

	actionText is the text of the button in the snackbar, it could be something like an 'undo' button
	action is the action to execute when the actionText button is pressed
"
Class {
	#name : #MDLSnackbar,
	#superclass : #MDLDivTag,
	#instVars : [
		'message',
		'timeout',
		'actionText',
		'action'
	],
	#category : 'Material-Design-Lite-Components-Snackbar'
}

{ #category : #accessing }
MDLSnackbar >> action [
	^ action
]

{ #category : #accessing }
MDLSnackbar >> action: aString [
	action := aString
]

{ #category : #accessing }
MDLSnackbar >> actionText [
	^ actionText
]

{ #category : #accessing }
MDLSnackbar >> actionText: aString [
	actionText := aString
]

{ #category : #initialization }
MDLSnackbar >> defaultTimeout [
	^'2000'
]

{ #category : #javascript }
MDLSnackbar >> getJsShowingSnackbar [
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: 'var snackbarContainer=document.querySelector("#';
				nextPutAll: self id;
				nextPutAll: '");var data={};data.message="';
				nextPutAll: (self message ifNil: [ '' ]);
				nextPutAll: '";data.timeout=';
				nextPutAll: self timeout asString;
				nextPut: $;.
			action
				ifNotNil: [ s
						nextPutAll: 'data.actionText="';
						nextPutAll: (self actionText ifNil: [ 'Action' ]);
						nextPutAll: '";var handler=function(event){';
						nextPutAll: self action;
						nextPutAll: '};data.actionHandler=handler;' ].
			s nextPutAll: 'snackbarContainer.MaterialSnackbar.showSnackbar(data);' ]
]

{ #category : #initialization }
MDLSnackbar >> initialize [
	super initialize.
	self class: 'mdl-js-snackbar'.
	self class: 'mdl-snackbar'.
   timeout := self defaultTimeout
]

{ #category : #accessing }
MDLSnackbar >> message [
	^ message
]

{ #category : #accessing }
MDLSnackbar >> message: aString [
	message := aString
]

{ #category : #accessing }
MDLSnackbar >> timeout [
	^ timeout
]

{ #category : #accessing }
MDLSnackbar >> timeout: anInteger [
	timeout := anInteger
]
