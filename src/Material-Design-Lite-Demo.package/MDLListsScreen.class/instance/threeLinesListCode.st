code
threeLinesListCode
	^ 'html mdlList
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
						''Bryan Cranston played the role of Walter in Breaking Bad. He is also known for playing Hal in Malcom in the Middle.'' ] ] ]'