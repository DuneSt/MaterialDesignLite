accessing
notMatchingPasswordsBlock
	^ notMatchingPasswordsBlock ifNil: [ self error: 'Passwords don''t match' ]