rendering
renderSquareCardOn: html
	html mdlCard
		shadow: 2;
		class: 'mdl-typography--text-left';
		style: 'margin: auto; width: 320px; height: 320px';
		with: [ 
			html mdlCardTitle 
				expand;
				style: 'color: #fff;background: url(''', (MDLDemoLibrary urlOf: #dogPng) asString , ''') bottom right 15% no-repeat #46B6AC;';
				with: [ html mdlCardTitleText: 'Update' level: 2 ].
			html mdlCardTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenan convallis.'.
			html mdlCardActions border; with: [ 
				html mdlButton style: 'font-weight: bold';colored; rippleEffect; with: 'View Updates' ] ]