as yet unclassified
squareCardCode 
	^ 'html mdlCard
	shadow: 2;
	style: ''margin: auto; width: 320px; height: 320px'';
	with: [ 
		html mdlCardTitle 
			expand;
			style: ''color: #fff;background: url('''', (MDLDemoLibrary urlOf: #dogPng) asString , '''') bottom right 15% no-repeat #46B6AC;'';
			with: [ html mdlCardTitleText: ''Update'' level: 2 ].
		html mdlCardTextContainer: ''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenan convallis.''.
		html mdlCardActions border; with: [ 
			html mdlButton colored; rippleEffect; with: ''View Updates'' ] ]'