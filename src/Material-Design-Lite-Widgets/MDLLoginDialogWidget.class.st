"
I represent the login widget but I am display in a dialog
"
Class {
	#name : #MDLLoginDialogWidget,
	#superclass : #MDLLoginWidget,
	#instVars : [
		'closeId',
		'openId',
		'signInTitleLabel',
		'signInButtonLabel'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #accessing }
MDLLoginDialogWidget >> closeId [
	^ closeId
]

{ #category : #accessing }
MDLLoginDialogWidget >> closeId: anObject [
	^ closeId := anObject
]

{ #category : #initialization }
MDLLoginDialogWidget >> initialize [
	super initialize.
	signInTitleLabel := 'Sign In'.
	signInButtonLabel := 'Sign In'
]

{ #category : #accessing }
MDLLoginDialogWidget >> openId [
	^ openId
]

{ #category : #accessing }
MDLLoginDialogWidget >> openId: anObject [
	^ openId := anObject
]

{ #category : #rendering }
MDLLoginDialogWidget >> renderCancelButtonOn: html [
	html mdlButton
		id: closeId;
		raised;
		with: cancelLabel
]

{ #category : #rendering }
MDLLoginDialogWidget >> renderContentOn: html [
	self renderOpenButtonOn: html.
	self renderLoginDialogOn: html
]

{ #category : #rendering }
MDLLoginDialogWidget >> renderLoginDialogOn: html [
	html mdlDialog
		openButtonId: openId;
		closeButtonId: (closeId := html nextId);
		with: [ html mdlDialogTitle
				class: 'mdl-color--primary';
				with: signInTitleLabel.
			html mdlDialogContent: [ super renderContentOn: html ] ]
]

{ #category : #rendering }
MDLLoginDialogWidget >> renderOpenButtonOn: html [
	html mdlButton
		id: (openId := html nextId);
		raised;
		colored;
		rippleEffect;
		with: signInButtonLabel
]
