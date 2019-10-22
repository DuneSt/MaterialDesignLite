"
Self-contained pieces of paper with data
"
Class {
	#name : #MDLCardsScreen,
	#superclass : #MDLComponentDemo,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLCardsScreen class >> icon [
		^ 'compcardsPng'
]

{ #category : #accessing }
MDLCardsScreen class >> title [
	^ 'Cards'
]

{ #category : #sections }
MDLCardsScreen >> imageCards [
	^ OrderedDictionary new
		add: 'Image' -> #renderImageCardOn:;
		add: 'Event' -> #renderDateCardOn:;
		yourself
]

{ #category : #demos }
MDLCardsScreen >> renderDateCardOn: html [
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'width: 256px; height: 256px;  background: #3E4EB8;';
		with: [ 
			html mdlCardTitleContainer
				style: 'align-items: flex-start; color: #fff';
				expand;
				with: [ html mdlCardTitleText
						style: 'margin-top: 0; align-self: flex-start';
						level: 4;
						with: [ html text: 'Featured event:'.
							html break.
							html text: 'May 25, 2016'.
							html break.
							html text: '7-11pm' ] ].
					
			html mdlCardActions
				border;
				style:
					'border-color: rgba(255, 255, 255, 0.2);
								display: flex;
  								box-sizing:border-box;
  								align-items: center;
								color: #fff';
				with: [ html mdlButton
						colored;
						rippleEffect;
						mdlTypographyFontBold;
						style: 'color: #fff';
						with: 'Add to calendar'.
					html mdlLayoutSpacer.
					html mdlIcon
						style: 'padding-right: 10px';
						with: 'event' ] ]
]

{ #category : #demos }
MDLCardsScreen >> renderImageCardOn: html [
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'width: 256px; height: 256px; background: url(''' , (MDLDemoLibrary urlOf: #imagecardJpg) asString , ''') center / cover';
		with: [ 
			html mdlCardTitleContainer expand.
			
			html mdlCardActions
				style: 'height: 52px; padding: 16px; background: rgba(0,0,0,0.2)';
				with: [ html span
						mdlTypographyFontBold;
						style: 'color: #fff; font-size: 14px';
						with: 'Image.jpg' ] ]
]

{ #category : #rendering }
MDLCardsScreen >> renderScreenContentOn: html [
	self
		render: self wideCards on: html;
		render: self squareCards on: html;
		render: self imageCards on: html
]

{ #category : #demos }
MDLCardsScreen >> renderSquareCardOn: html [
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'width: 320px; height: 320px';
		with: [ 
			html mdlCardTitleContainer
				expand;
				style: 'color: #fff;background: url(''' , (MDLDemoLibrary urlOf: #dogPng) asString , ''') bottom right 15% no-repeat #46B6AC;';
				with: [ html mdlCardTitleText: 'Update' level: 2 ].
				
			html mdlCardTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenan convallis.'.
			
			html mdlCardActions
				border;
				with: [ html mdlButton
						mdlTypographyFontBold;
						colored;
						rippleEffect;
						with: 'View Updates' ] ]
]

{ #category : #demos }
MDLCardsScreen >> renderWideCardOn: html [
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'width: 512px';
		with: [ 
			html mdlCardTitleContainer
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
]

{ #category : #sections }
MDLCardsScreen >> squareCards [
	^ OrderedDictionary new
		add: 'Square' -> #renderSquareCardOn:;
		yourself
]

{ #category : #sections }
MDLCardsScreen >> wideCards [
	^ OrderedDictionary new
		add: 'Wide' -> #renderWideCardOn:;
		yourself
]
