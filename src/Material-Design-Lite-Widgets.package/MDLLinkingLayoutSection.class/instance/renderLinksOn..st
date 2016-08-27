rendering
renderLinksOn: html
	self links
		do: [ :aDictionary | 
			html
				mdlNavigation: [ 
					aDictionary
						keysAndValuesDo: [ :label :callback | 
							html mdlNavigationLink
								callback: callback;
								with: label ] ].
			html mdlLayoutSpacer ]