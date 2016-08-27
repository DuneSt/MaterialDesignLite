subElements
renderListsOn: html
	html heading level4 with: 'Simple list'.
	html mdlList: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk') do: [ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ].
		
	html heading level4 with: 'List with three lines, avatar and action'.
	html
		mdlList: [ 
			html mdlListItem threeLine
				with: [ 
					html
						mdlListPrimaryContent: [ 
							html mdlListAvatar: 'person'.
							html span: 'Bryan Cranston'.
							html
								mdlListItemTextBody:
									'Bryan Cranston played the role of Walter in Breaking Bad. He is also known for playing Hal in Malcom in the Middle.' ].
					html
						mdlListSecondaryContent: [ 
							html mdlListItemSecondaryInfo: 'Actor'.
							html mdlListItemSecondaryAction
								url: '#';
								with: [ html mdlIcon: 'star' ] ] ].
			html mdlListItem threeLine
				with: [ 
					html
						mdlListPrimaryContent: [ 
							html mdlListAvatar: 'person'.
							html span: 'Aaron Paul'.
							html
								mdlListItemTextBody:
									'Aaron Paul played the role of Jesse in Breaking Bad. He also featured in the "Need For Speed" Movie.' ].
					html
						mdlListSecondaryContent: [ 
							html mdlListItemSecondaryAction
								url: '#';
								with: [ html mdlIcon: 'star' ] ] ].
			html mdlListItem threeLine
				with: [ 
					html
						mdlListPrimaryContent: [ 
							html mdlListAvatar: 'person'.
							html span: 'Bob Odinkrik'.
							html
								mdlListItemTextBody:
									'Bob Odinkrik played the role of Saul in Breaking Bad. Due to public fondness for the character, Bob stars in his own show now, called "Better Call Saul".' ].
					html
						mdlListSecondaryContent: [ 
							html mdlListItemSecondaryAction
								url: '#';
								with: [ html mdlIcon: 'star' ] ] ] ]