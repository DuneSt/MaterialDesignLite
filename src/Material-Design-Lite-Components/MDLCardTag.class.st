"
Description
--------------------

I am a brush to create a MDL card.

Example
--------------------

	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'width: 256px; height: 256px; background: url(''' , (MDLDemoLibrary urlOf: #imagecardJpg) asString , ''') center / cover';
		with: [ 
			html mdlCardTitle expand.
			
			html mdlCardActions
				style: 'height: 52px; padding: 16px; background: rgba(0,0,0,0.2)';
				with: [ html span
						mdlTypographyFontBold;
						style: 'color: #fff; font-size: 14px';
						with: 'Image.jpg' ] ]
"
Class {
	#name : #MDLCardTag,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Cards'
}

{ #category : #initialization }
MDLCardTag >> initialize [
	super initialize.
	self class: 'mdl-card'
]
