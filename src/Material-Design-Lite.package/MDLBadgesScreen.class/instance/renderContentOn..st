rendering
renderContentOn: html
	html mdlIconBadge
		dataBadge: '♥';
		overlap;
		with: 'account_box'.
	html
		code: [ html
				preformatted:
					'html mdlIconBadge
	dataBadge: ''♥'';
	overlap;
	with: ''account_box''' ].
	html mdlBadge
		dataBadge: '38';
		overlap;
		with: [ html mdlButton: 'Inbox' ]