rendering
renderContentOn: html
	html mdlCardActions
		border;
		with: [ 
	html
		mdlList: [ self examples
				do: [ :each | 
					html
						mdlListItem: [ html mdlListPrimaryContent: [ html mdlListItemTextBody: each label ].
							html
								mdlListSecondaryContent: [ html mdlListItemSecondaryAction
										with: [ html anchor
												callback: [ self show: each new ];
												with: [ html mdlButton
														fab;
														miniFab;
														with: [ html mdlIcon: 'keyboard_arrow_right' ] ] ] ] ] ] ]]