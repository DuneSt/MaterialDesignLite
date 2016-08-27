as yet unclassified
renderFixedDrawerNoHeaderOn: html
	html mdlLayout
		style: 'min-height: 300px; width: 100%; box-shadow: 0px 1px 2px #aaa;';
		fixedDrawer;
		with: [ 
			html mdlLayoutDrawer: [ 
				html mdlLayoutTitle: 'Title'.
				html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self fixedDrawerNoHeaderCode ] .