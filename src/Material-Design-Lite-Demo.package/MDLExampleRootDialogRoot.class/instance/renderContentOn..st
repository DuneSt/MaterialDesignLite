rendering
renderContentOn: html
	html div
		style: 'width: 100%; height: 100%; background-color: #ECEFF1;';
		with: MDLExampleRootDialogUser new.
	self renderEmptyGenericDialogOn: html