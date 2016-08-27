rendering
renderContentOn: html
	html mdlButton
		id: (openId := html nextId);
		raised;
		colored;
		rippleEffect;
		with: loginLabel.
	html mdlDialog
		openButtonId: openId;
		closeButtonId: (closeId := html nextId);
		with: [ html mdlDialogTitle
				class: 'mdl-color--primary';
				with: loginLabel.
			html mdlDialogContent: [ super renderContentOn: html ] ]