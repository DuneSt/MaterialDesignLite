rendering
renderBadgeOverButtonOn: html
	html mdlBadge
		dataBadge: '38';
		overlap;
		style: 'width: fit-content; margin : auto';
		with: [ html mdlButton: 'Inbox' ].
	html
		code: [ html preformatted
				with:
					'html mdlBadge
	dataBadge: ''38'';
	overlap;
	style: ''width: fit-content'';
	with: [ html mdlButton: ''Inbox'' ]' ]