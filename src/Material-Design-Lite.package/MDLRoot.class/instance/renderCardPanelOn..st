rendering
renderCardPanelOn: html
	html mdlTabsPanel
		id: 'cards';
		with: [  
					html
						mdlCard: [ 
							html mdlCardTitle: [ html mdlCardTitleText: 'Title' level: 2 ].
							html mdlCardTitle: [ html mdlCardSubtitleText: 'Subtitle' ].
							html mdlCardTextContainer border; with: [ html text: 'Text that can be long or short but right now I want to show the behavior with long text.' ].
							html mdlCardActions border; with: [ html mdlButton colored ; rippleEffect; with: [ html text: 'Button' ] ] ] 
		]