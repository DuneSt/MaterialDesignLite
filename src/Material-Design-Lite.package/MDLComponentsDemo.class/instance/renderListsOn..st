subElements
renderListsOn: html
	html heading level4 with: 'Simple list'.
	html mdlList with: [ 
		html mdlListItem with: [ 
			html mdlListPrimaryContent with: [ html text: 'Bryan Cranston' ] 
		].
		html mdlListItem with: [ 
			html mdlListPrimaryContent with: [  html text: 'Aaron Paul' ] 
		].
		html mdlListItem with: [ 
			html mdlListPrimaryContent with: [  html text: 'Bob Odenkirk' ] 
		]
	].

	html heading level4 with: 'List with three lines, avatar and action'.
	html mdlList with: [
		html mdlListItem threeLine with: [
			html mdlListPrimaryContent with: [
				html mdlListAvatar: 'person'.
				(html tag: 'span') with: [html text: 'Bryan Cranston' ].
				html mdlListItemTextBody with: [ html text: 
					'Bryan Cranston played the role of Walter in Breaking Bad. He is also known for playing Hal in Malcom in the Middle.'
				]
			].
			html mdlListSecondaryContent with: [
				html mdlListItemSecondaryInfo with: [ html text: 'Actor' ].
				html mdlListItemSecondaryAction url: '#';
					with: [ html mdlIcon: 'star' ]
			]
		].
	
		html mdlListItem threeLine with: [
			html mdlListPrimaryContent with: [
				html mdlListAvatar: 'person'.
				(html tag: 'span') with: [html text: 'Aaron Paul' ].
				html mdlListItemTextBody with: [ html text: 
					'Aaron Paul played the role of Jesse in Breaking Bad. He also featured in the "Need For Speed" Movie.'
				]
			].
			html mdlListSecondaryContent with: [
				html mdlListItemSecondaryAction url: '#';
					with: [ html mdlIcon: 'star' ]
			]
		].
	
		html mdlListItem threeLine with: [
			html mdlListPrimaryContent with: [
				html mdlListAvatar: 'person'.
				(html tag: 'span') with: [html text: 'Bob Odinkrik' ].
				html mdlListItemTextBody with: [ html text: 
					'Bob Odinkrik played the role of Saul in Breaking Bad. Due to public fondness for the character, Bob stars in his own show now, called "Better Call Saul".'
				]
			].
			html mdlListSecondaryContent with: [
				html mdlListItemSecondaryAction url: '#';
					with: [ html mdlIcon: 'star' ]
			]
		]
	]