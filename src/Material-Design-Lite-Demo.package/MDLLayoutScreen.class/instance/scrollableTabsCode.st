code
scrollableTabsCode
	^'html mdlLayout fixedHeader; with: [ 
	html mdlLayoutHeader: [ 
		html mdlLayoutHeaderRow: [ 
			html mdlLayoutTitle: ''Title'' ].
		html mdlLayoutTabBar: [ 
			html mdlLayoutTab isActive; url: ''#tab-1'';with: ''Tab 1''.
			html mdlLayoutTab url: ''#tab-2''; with: ''Tab 2'' .
			html mdlLayoutTab url: ''#tab-3''; with: ''Tab 3'' .
			html mdlLayoutTab url: ''#tab-4''; with: ''Tab 4'' ] ].
	html mdlLayoutDrawer: [ html mdlLayoutTitle: ''Title'' ].
	html mdlLayoutContent: [ 
		html mdlLayoutTabPanel isActive; id: ''tab-1''.
		html mdlLayoutTabPanel id: ''tab-2''.
		html mdlLayoutTabPanel id: ''tab-3''.
		html mdlLayoutTabPanel id: ''tab-4'' ] ]'