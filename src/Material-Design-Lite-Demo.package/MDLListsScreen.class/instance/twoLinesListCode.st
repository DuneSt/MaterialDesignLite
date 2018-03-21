code
twoLinesListCode 
	^ 'html mdlList
	style: ''width: 300px'';
	with: [ 
		html mdlListItem
			twoLine;
			with: [
				html mdlListPrimaryContent: [ 
					html mdlIcon
						listItemAvatar;
						with: #person.
					html text: ''Bryan Cranston''.
					html mdlListItemSubTitle: ''Appears in 62 Episodes'' ] ] ]'