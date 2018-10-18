"
Description
--------------------

I am a brush to create a  card title text.

Example
--------------------

	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'width: 320px; height: 320px';
		with: [ 
			html mdlCardTitle
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
"
Class {
	#name : #MDLCardTitleText,
	#superclass : #WAHeadingTag,
	#category : 'Material-Design-Lite-Components-Cards'
}

{ #category : #initialization }
MDLCardTitleText >> initialize [
	super initialize.
	self class: 'mdl-card__title-text'
]
