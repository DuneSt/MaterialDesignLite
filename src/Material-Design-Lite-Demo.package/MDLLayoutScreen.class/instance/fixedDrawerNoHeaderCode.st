code
fixedDrawerNoHeaderCode
	^ 'html mdlLayout
	fixedDrawer; with: [ 
		html mdlLayoutDrawer: [ 
			html mdlLayoutTitle: ''Title''.
			html mdlNavigation: [ html mdlNavigationLink beCurrent; with: ''Link''.
				1 to: 4 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ]'