demos
renderScrollableTabsOn: html
	html mdlLayout
		fixedHeader;
		with: [ html
				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title' ].
					html
						mdlLayoutTabBar
						rippleEffect;
						with: [ 1 to: 6 do: [ :int | 
								html mdlLayoutTab
									isActiveIf: int = 1;
									url: '#tab-' , int asString;
									with: 'Tab ' , int asString ] ] ].
			html mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title' ].
			html
				mdlLayoutContent: [ 1 to: 6 do: [ :int | 
						html mdlLayoutTabPanel
							isActiveIf: int = 1;
							id: 'tab-' , int asString ] ] ]