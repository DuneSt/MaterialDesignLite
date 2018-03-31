demos
renderWaterfallHeaderOn: html
	html mdlLayout
		with: [ html mdlLayoutHeader
				waterfall;
				with: [ html
						mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title'.
							html mdlLayoutSpacer.
							html mdlTextFieldContainer
								expandable;
								with: [ 
									html mdlButton labelIcon; for: html nextId; with: [ html mdlIcon: 'search' ].
									html mdlTextFieldExpandableHolder: [ 
										html mdlTextFieldInput id: html lastId; type: 'text'.
										html mdlTextFieldLabel for: html lastId; with: 'Expandable Input' ] ] ].
					html
						mdlLayoutHeaderRow: [ html mdlLayoutSpacer.
							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
			html
				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.
					html
						mdlNavigation: [ 1 to: 5 do: [ :i | 
								html mdlNavigationLink
									beCurrentIf: [ i = 1 ];
									with: 'Link' ] ] ].
			html
				mdlLayoutContent: [ html div
						style: 'height: 600px;';
						with: [  ] ] ]