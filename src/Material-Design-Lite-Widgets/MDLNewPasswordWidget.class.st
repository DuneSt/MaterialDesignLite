"
I am a widget for password change
"
Class {
	#name : #MDLNewPasswordWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'currentPassword',
		'newPassword',
		'badPasswordBlock',
		'oldPasswordLabel',
		'newPasswordLabel',
		'onSuccessBlock',
		'confirmPasswordLabel',
		'notMatchingPasswordsBlock',
		'rightOldPassword',
		'pattern',
		'errorMessage'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #accessing }
MDLNewPasswordWidget >> badPasswordBlock [
	^ badPasswordBlock ifNil: [ self error: 'Bad password' ]
]

{ #category : #accessing }
MDLNewPasswordWidget >> badPasswordBlock: anObject [
	badPasswordBlock := anObject
]

{ #category : #accessing }
MDLNewPasswordWidget >> confirmPasswordLabel [
	^ confirmPasswordLabel ifNil: [ newPasswordLabel := 'Confirm password' ]
]

{ #category : #accessing }
MDLNewPasswordWidget >> confirmPasswordLabel: anObject [
	confirmPasswordLabel := anObject
]

{ #category : #accessing }
MDLNewPasswordWidget >> currentPassword [
	^ currentPassword
]

{ #category : #accessing }
MDLNewPasswordWidget >> currentPassword: anObject [
	currentPassword := anObject
]

{ #category : #initialization }
MDLNewPasswordWidget >> initialize [
	super initialize.
	rightOldPassword := false.
	pattern := ''.
	errorMessage := ''
]

{ #category : #accessing }
MDLNewPasswordWidget >> newPassword [
	^ newPassword
]

{ #category : #accessing }
MDLNewPasswordWidget >> newPassword: anObject [
	newPassword := anObject
]

{ #category : #accessing }
MDLNewPasswordWidget >> newPasswordLabel [
	^ newPasswordLabel ifNil: [ newPasswordLabel := 'New password' ]
]

{ #category : #accessing }
MDLNewPasswordWidget >> newPasswordLabel: anObject [
	^ newPasswordLabel := anObject
]

{ #category : #accessing }
MDLNewPasswordWidget >> notMatchingPasswordsBlock [
	^ notMatchingPasswordsBlock ifNil: [ self error: 'Passwords don''t match' ]
]

{ #category : #accessing }
MDLNewPasswordWidget >> notMatchingPasswordsBlock: anObject [
	notMatchingPasswordsBlock := anObject
]

{ #category : #accessing }
MDLNewPasswordWidget >> oldPasswordLabel [
	^ oldPasswordLabel ifNil: [ oldPasswordLabel := 'Current password' ]
]

{ #category : #accessing }
MDLNewPasswordWidget >> oldPasswordLabel: anObject [
	^ oldPasswordLabel := anObject
]

{ #category : #accessing }
MDLNewPasswordWidget >> onSuccessBlock [
	^ onSuccessBlock ifNil: [ ^ [  ] ]
]

{ #category : #accessing }
MDLNewPasswordWidget >> onSuccessBlock: anObject [
	onSuccessBlock := anObject
]

{ #category : #options }
MDLNewPasswordWidget >> pattern: aPattern errorMessage: aString [
	pattern := aPattern.
	errorMessage := aString
]

{ #category : #rendering }
MDLNewPasswordWidget >> renderContentOn: html [
	html
		render:
			(MDLTextFieldWidget new
				beFloatingLabel;
				type: 'password';
				callback: [ :aString | 
					rightOldPassword := (MD5 hashMessage: aString) = currentPassword.
					rightOldPassword
						ifFalse: self badPasswordBlock ];
				label: self oldPasswordLabel;
				yourself).
	html
		render:
			(MDLTextFieldWidget new
				beFloatingLabel;
				type: 'password';
				pattern: pattern errorMessage: errorMessage;
				on: #newPassword of: self;
				label: self newPasswordLabel;
				yourself).
	html
		render:
			(MDLTextFieldWidget new
				beFloatingLabel;
				type: 'password';
				label: self confirmPasswordLabel;
				callback: [ :aString | 
					aString = newPassword
						ifFalse: self notMatchingPasswordsBlock
						ifTrue: [ rightOldPassword
								ifTrue: [ self onSuccessBlock value: aString ] ] ])
]
