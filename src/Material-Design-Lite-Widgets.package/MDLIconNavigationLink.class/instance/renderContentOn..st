rendering
renderContentOn: html
	html mdlNavigationLink
				url: self url;
				with: [ html mdlIcon: self content ]