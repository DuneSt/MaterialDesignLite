rendering
renderWarningMessageOn: html
	self warningMessage ifNil: [ ^ self ].
	
	html div
		class: 'mdl-demo-warning';
		mdlTypographyBody2;
		with: 'Warning: ', self warningMessage