"
A login widget which use a MDLCardWidget

I'm ready to use, you just have to give me a callback with 2 arguments (login and password) and insert me in a form.
"
Class {
	#name : #MDLLoginWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'titleLabel',
		'titleLevel',
		'loginLabel',
		'passwordLabel',
		'login',
		'password',
		'submitLabel',
		'callback',
		'cancelLabel',
		'cancelCallback'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #accessing }
MDLLoginWidget >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
MDLLoginWidget >> cancelCallback [
	^ cancelCallback ifNil: [ cancelCallback := [  ] ]
]

{ #category : #accessing }
MDLLoginWidget >> cancelCallback: anObject [
	cancelCallback := anObject
]

{ #category : #accessing }
MDLLoginWidget >> cancelLabel: anObject [
	cancelLabel := anObject
]

{ #category : #initialization }
MDLLoginWidget >> initialize [
	super initialize.
	titleLabel := 'Please, sign in'.
	titleLevel := 2.
	loginLabel := 'Login'.
	cancelLabel := 'Cancel'.
	passwordLabel := 'Password'.
	submitLabel := 'Sign In'
]

{ #category : #accessing }
MDLLoginWidget >> login [
	^ login
]

{ #category : #accessing }
MDLLoginWidget >> login: anObject [
	login := anObject
]

{ #category : #rendering }
MDLLoginWidget >> loginInputWidget [
	^ MDLTextFieldWidget new
		beFloatingLabel;
		on: #login of: self;
		label: loginLabel;
		yourself
]

{ #category : #accessing }
MDLLoginWidget >> loginLabel: anObject [
	loginLabel := anObject
]

{ #category : #accessing }
MDLLoginWidget >> password [
	^ password
]

{ #category : #accessing }
MDLLoginWidget >> password: anObject [
	password := anObject
]

{ #category : #rendering }
MDLLoginWidget >> passwordInputWidget [
	^ MDLTextFieldWidget new beFloatingLabel
		type: 'password';
		on: #password of: self;
		label: passwordLabel;
		yourself
]

{ #category : #accessing }
MDLLoginWidget >> passwordLabel: anObject [
	passwordLabel := anObject
]

{ #category : #rendering }
MDLLoginWidget >> renderCancelButtonOn: html [
	html anchor
		class: 'mdl-button mdl-js-button mdl-button--raised';
		callback: self cancelCallback;
		with: cancelLabel
]

{ #category : #rendering }
MDLLoginWidget >> renderContentOn: html [
	self renderFieldsOn: html.
	self renderSubmitButtonOn: html.
	self renderCancelButtonOn: html
]

{ #category : #rendering }
MDLLoginWidget >> renderFieldsOn: html [
	html render: self loginInputWidget.
	html render: self passwordInputWidget
]

{ #category : #rendering }
MDLLoginWidget >> renderSubmitButtonOn: html [
	html mdlButton
		raised;
		accentColor;
		beSubmit;
		callback: [ callback value: login value: password ];
		with: submitLabel
]

{ #category : #accessing }
MDLLoginWidget >> submitLabel: anObject [
	submitLabel := anObject
]

{ #category : #accessing }
MDLLoginWidget >> titleLabel: anObject [
	titleLabel := anObject
]

{ #category : #accessing }
MDLLoginWidget >> titleLevel: anObject [
	titleLevel := anObject
]
