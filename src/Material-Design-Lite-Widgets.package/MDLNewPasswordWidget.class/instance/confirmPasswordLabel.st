accessing
confirmPasswordLabel
	^ confirmPasswordLabel ifNil: [ newPasswordLabel := 'Confirm password' ]