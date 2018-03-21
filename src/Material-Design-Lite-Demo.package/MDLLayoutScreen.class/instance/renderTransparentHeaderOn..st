rendering
renderTransparentHeaderOn: html
	html mdlLayout class: 'examples'; style: ('background: url(''', (MDLDemoLibrary urlOf: #transparentJpg) asString , ''') center / cover; min-height: 300px;box-shadow: 0px 1px 2px #aaa; margin-bottom: 20px;'); with:  [ 
		html mdlLayoutHeader transparent; with: [ 
			html mdlLayoutHeaderRow: [ 
				html mdlLayoutTitle: 'Title'.
				html mdlLayoutSpacer.
				html mdlNavigation: [ 
					1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
		html mdlLayoutDrawer: [
			html mdlLayoutTitle: 'Title'.
			html mdlNavigation: [ 
				1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self transparentHeaderCode ] .