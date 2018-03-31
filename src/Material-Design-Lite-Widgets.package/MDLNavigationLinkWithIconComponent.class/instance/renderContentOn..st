rendering
renderContentOn: html
	html mdlNavigationLink
		style: 'margin: 8px 16px';
		callback: callback;
		with: [ html
				div: [ html image
						url: (iconUrl);"
						url: (MDLDemoLibrary urlOf: icon);"
						style: 'height: 46px; width: 46px; margin: 0px 10px;'.
					html span: label ] ]