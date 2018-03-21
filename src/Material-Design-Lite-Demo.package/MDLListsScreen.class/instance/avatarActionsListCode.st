code
avatarActionsListCode 
	^ 'html mdlList: [ 
	#(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'') do: [ :name | 
		html mdlListItem: [ 
			html mdlListPrimaryContent: [
				html mdlIcon	listItemAvatar; with: #person.
				html text: name ].
			html mdlListItemSecondaryAction url: ''#''; with: [ 
				html mdlIcon: #star ] ] ] ]'