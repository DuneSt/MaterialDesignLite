as yet unclassified
renderThreeLineListOn: html
	html div
		class: 'centered-content';
		with: [ html mdlList
				style: 'width: 460px';
				with: [ html mdlListItem
						threeLine;
						with: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: 'Bryan Cranston'.
									html
										mdlListItemTextBody:
											'Bryan Cranston played the role of Walter in Breaking Bad.
He is also known for playing Hal in Malcom in the Middle.' ] ] ].
			html paragraph
				class: 'mdl-typography--text-center';
				with: 'List with content on three line' ].
	html
		code: [ html preformatted
				with:
					'html mdlList
	style: ''width: 460px'';
	with: [ 
		html mdlListItem
			threeLine;
			with: [
				html mdlListPrimaryContent: [ 
					html mdlIcon
						listItemAvatar;
						with: #person.
					html text: ''Bryan Cranston''.
					html mdlListItemTextBody:
						''Bryan Cranston played the role of Walter in Breaking Bad. He is also known for playing Hal in Malcom in the Middle.'' ] ] ]' ]