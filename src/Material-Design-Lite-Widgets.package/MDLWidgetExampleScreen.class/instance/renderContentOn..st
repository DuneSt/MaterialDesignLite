rendering
renderContentOn: html
	html div
		class: 'screen-content';
		style: 'margin: 32px';
		with: [ self renderScreenContentOn: html ]