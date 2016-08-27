rendering
renderLinksOn: html
	self links
		do: [ :aDictionary | 
			html mdlLayoutSpacer.
			html mdlNavigation: [ 
				aDictionary keysAndValuesDo: [ :label :callback | 
					html mdlNavigationLink
						callback: callback;
						with: label ] ] ]