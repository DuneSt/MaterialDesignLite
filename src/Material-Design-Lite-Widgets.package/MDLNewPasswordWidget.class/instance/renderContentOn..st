rendering
renderContentOn: html
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