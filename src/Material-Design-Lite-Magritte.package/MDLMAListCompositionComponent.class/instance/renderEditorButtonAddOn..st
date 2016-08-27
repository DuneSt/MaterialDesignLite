rendering-buttons
renderEditorButtonAddOn: html
	html mdlButton
		beSubmit;
		callback: [ self add ];
		with: [ html mdlIcon: 'forward' ].
	html break.
	html mdlButton
		beSubmit;
		callback: [ self remove ];
		with: [ html mdlIcon: 'backward' ]