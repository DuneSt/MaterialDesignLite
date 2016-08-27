code
fixedDrawerNoHeaderCode
	^ 'html mdlLayout
	fixedDrawer; with: [ 
		html mdlLayoutDrawer: [ 
			html mdlLayoutTitle: ''Title''.
			html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ]'