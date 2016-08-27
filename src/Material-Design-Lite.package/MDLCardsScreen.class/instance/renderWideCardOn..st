rendering
renderWideCardOn: html
	html mdlCard
		shadow: 2;
		class: 'mdl-typography--text-left';
		style: 'margin: auto; width: 512px';
		with: [ 
					html mdlCardTitle
						style:
								'height: 176px; background: url(''' , (MDLDemoLibrary urlOf: #welcomecardJpg) asString
										, ''') center / cover; color: #fff';
						with: [ html mdlCardTitleText: 'Welcome' ].
					html
						mdlCardTextContainer:
							'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Mauris sagittis pellentesque lacus eleifend lacinia...'.
					html mdlCardActions
						border;
						with: [ 
									html mdlButton
										colored;
										rippleEffect;
										style: 'font-weight : bold';
										with: 'Get Started' ].
					html mdlCardMenu
						style: 'color: #fff';
						with: [ 
									html mdlButton
										icon;
										rippleEffect;
										with: [ html mdlIcon: 'share' ] ] ]