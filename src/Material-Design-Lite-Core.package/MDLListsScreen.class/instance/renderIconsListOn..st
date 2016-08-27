rendering
renderIconsListOn: html
	html div
		class: 'centered-content';
		class: 'examples';
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
	html preformatted: [ html code class: 'smalltalk';
				with: self iconsListCode ]