as yet unclassified
renderWideCardDivOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html
						mdlCellDesktop: 12
						tablet: 8
						phone: 4
						with: [ self renderWideCardOn: html ].
					html
						mdlCellDesktop: 12
						tablet: 8
						phone: 4
						with: [ html text: 'Wide' ] ].
	html
		code: [ 
			html preformatted
				with:
					'html mdlCard
	shadow: 2;
	style: ''width: 512px'';
	with: [ 
		html mdlCardTitle
			style: ''height: 176px; background: url('''' , (MDLDemoLibrary urlOf: #welcomecardJpg) asString , '''') center / cover; color: #fff'';
			with: [ html mdlCardTitleText: ''Welcome'' ].
		html mdlCardTextContainer: ''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...''.
		html mdlCardActions
			border;
			with: [ 
				html mdlButton
					colored;
					rippleEffect;
					style: ''font-weight : bold'';
					with: ''Get Started'' ].
		html mdlCardMenu
			style: ''color: #fff'';
			with: [ 
				html mdlButton
					icon;
					rippleEffect;
					with: [ html mdlIcon: ''share'' ] ] ]' ]