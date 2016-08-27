code
fixedHeaderAndDrawerCode
	^ 'html mdlLayout
	fixedDrawer;
	fixedHeader;
	with: [ 
		html mdlLayoutHeader: [ 
			html mdlLayoutHeaderRow: [
			html mdlLayoutSpacer.
			html mdlNavigation: [ 
				1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].
		html mdlLayoutDrawer: [ 
			html mdlLayoutTitle: ''Title''.
			html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ]'