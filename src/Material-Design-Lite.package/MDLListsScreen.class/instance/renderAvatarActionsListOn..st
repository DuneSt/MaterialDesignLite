as yet unclassified
renderAvatarActionsListOn: html
	html div
		class: 'centered-content';
		class: 'mdl-typography--text-center';
		with: [ html
				mdlList
					style: 'width: 300px';
					with: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk')
						do: [ :name | 
							html
								mdlListItem: [ html
										mdlListPrimaryContent: [ html mdlIcon
												listItemAvatar;
												with: #person.
											html text: name ].
										html mdlListItemSecondaryAction
											url: '#';
											with: [ html mdlIcon: #star ] ] ] ].
			html paragraph: 'List with Avatars and Actions' ].
	html preformatted: [ html code class: 'smalltalkt';
				with:
					'html mdlList: [ 
	#(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'') do: [ :name | 
		html mdlListItem: [ 
			html mdlListPrimaryContent: [
				html mdlIcon
					listItemAvatar;
					with: #person.
				html text: name ].
			html mdlListItemSecondaryAction
				url: ''#'';
				with: [ html mdlIcon: #star ] ] ] ]' ]