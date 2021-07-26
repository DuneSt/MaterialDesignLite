"
Description
--------------------

I am a brush to create actions inside  a card.

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
"
Class {
	#name : #MDLCardActions,
	#superclass : #MDLCardInnerDiv,
	#category : #'Material-Design-Lite-Components-Cards'
}

{ #category : #initialization }
MDLCardActions >> initialize [
	super initialize.
	self class: 'mdl-card__actions'
]
