rendering
renderFixedHeaderAndDrawerOn: html
	html mdlLayout
		class: 'examples';
		style: 'min-height: 300px; width: 100%; box-shadow: 0px 1px 2px #aaa; margin-bottom: 20px;';
		fixedDrawer;
		fixedHeader;
		with: [ 
			html mdlLayoutHeader: [ 
				html mdlLayoutHeaderRow: [
				html mdlLayoutSpacer.
				html mdlNavigation: [ 
					1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
			html mdlLayoutDrawer: [ 
				html mdlLayoutTitle: 'Title'.
				html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self fixedHeaderAndDrawerCode ].