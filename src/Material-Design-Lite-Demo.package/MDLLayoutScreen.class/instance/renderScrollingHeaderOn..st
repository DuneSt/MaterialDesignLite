demos
renderScrollingHeaderOn: html
	html mdlLayout
		with: [ html mdlLayoutHeader
				scroll;
				with: [ html
						mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title'.
							html mdlLayoutSpacer.
							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
			html
				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.
					html
						mdlNavigation: [ 1 to: 5 do: [ :i | 
								html mdlNavigationLink
									beCurrentIf: [ i = 1 ];
									with: 'Link' ] ] ].
			html
				mdlLayoutContent: [ 
					html div
						style: 'height: 600px;';
						with: [  ] ] ]