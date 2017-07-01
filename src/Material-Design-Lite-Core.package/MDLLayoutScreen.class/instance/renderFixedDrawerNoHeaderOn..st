rendering
renderFixedDrawerNoHeaderOn: html
	html mdlLayout
		class: 'examples';
		style: 'min-height: 300px; width: 100%; box-shadow: 0px 1px 2px #aaa; margin-bottom: 20px;';
		fixedDrawer;
		with: [ html
				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.
					html
						mdlNavigation: [ html mdlNavigationLink
								beCurrent;
								with: 'Link'.
							1 to: 4 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
	html preformatted
		with: [ html code
				class: 'smalltalk';
				with: self fixedDrawerNoHeaderCode ]