Description
--------------------

I am a brush to create a card title div.

Example
--------------------

	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'width: 512px';
		with: [ 
			html mdlCardTitle
				style: 'height: 176px; background: url(''' , (MDLDemoLibrary urlOf: #welcomecardJpg) asString , ''') center / cover; color: #fff';
				with: [ html mdlCardTitleText: 'Welcome' ].
				
			html mdlCardTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...'.
			
			html mdlCardActions
				border;
				with: [ html mdlButton
						colored;
						rippleEffect;
						mdlTypographyFontBold;
						with: 'Get Started' ].
					
			html mdlCardMenu
				style: 'color: #fff';
				with: [ html mdlButton
						icon;
						rippleEffect;
						with: [ html mdlIcon: 'share' ] ] ]