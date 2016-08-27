rendering
renderContentOn: html
	html div
		style: 'padding-left: 20px;';
		with: [ html heading level5 with: 'Badges'.
			html paragraph: 'Small status descriptors for UI elements'.
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
			html paragraph: 'You can plus a badge to every element:'.
			html mdlBadge
				dataBadge: '38';
				overlap;
				style: 'width: fit-content';
				with: [ html mdlButton: 'Inbox' ].
			html
				code: [ html preformatted
						with:
							'html mdlBadge
	dataBadge: ''38'';
	overlap;
	style: ''width: fit-content'';
	with: [ html mdlButton: ''Inbox'' ]' ] ]