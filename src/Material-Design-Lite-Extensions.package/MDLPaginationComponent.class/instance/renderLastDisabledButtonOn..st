rendering
renderLastDisabledButtonOn: html
	self shouldShowLastDisabledButton ifFalse: [ ^ self ].
	
	html button
		disabled;
		with: '…'