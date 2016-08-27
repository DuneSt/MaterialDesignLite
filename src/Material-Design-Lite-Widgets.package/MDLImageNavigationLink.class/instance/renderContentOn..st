rendering
renderContentOn: html
	html mdlNavigationLink
		url: self url;
		with: [ html image url: self content ]