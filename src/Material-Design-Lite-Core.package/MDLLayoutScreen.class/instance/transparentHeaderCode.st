code
transparentHeaderCode
	^ 'html mdlLayout style: (''background: url('', (MDLDemoLibrary urlOf: #transparentJpg) asString , '') center / cover; min-height: 300px;''); with:  [ 
	html mdlLayoutHeader transparent; with: [ 
		html mdlLayoutHeaderRow: [ 
			html mdlLayoutTitle: ''Title''.
			html mdlLayoutSpacer.
			html mdlNavigation: [ 
				1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ].
	html mdlLayoutDrawer: [
		html mdlLayoutTitle: ''Title''.
		html mdlNavigation: [ 
			1 to: 5 do: [ :i | html mdlNavigationLink: ''Link'' ] ] ] ]'