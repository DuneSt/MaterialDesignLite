as yet unclassified
renderListWithIconsOn: html
	html div
		class: 'centered-content';
		class: 'mdl-typography--text-center';
		with: [ html
				mdlList: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk')
						do: [ :name | 
							html
								mdlListItem: [ html
										mdlListPrimaryContent: [ html mdlIcon
												listItemIcon;
												with: #person.
											html text: name ] ] ] ].
			html paragraph: 'List with Icons' ].
	html
		code: [ html preformatted
				with:
					'html mdlList: [ 
	#(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'') do: [ :name | 
		html mdlListItem: [ 
			html mdlListPrimaryContent: [
				html mdlIcon
					listItemIcon;
					with: #person.
				html text: name ] ] ] ]' ]