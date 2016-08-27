rendering
renderContentOn: html
	html
		render:
			(MDLTextFieldWidget new
				beFloatingLabel;
				type: 'password';
				callback: [ :aString | 
					(MD5 hashMessage: aString) = currentPassword
						ifFalse: self badPasswordBlock ];
				label: self oldPasswordLabel;
				yourself).
	html
		render:
			(MDLTextFieldWidget new
				beFloatingLabel;
				type: 'password';
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
						ifTrue: [ self onSuccessBlock value: aString ] ])