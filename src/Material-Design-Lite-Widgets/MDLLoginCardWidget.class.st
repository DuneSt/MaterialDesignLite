"
I'm a login widget render in a card widget
"
Class {
	#name : #MDLLoginCardWidget,
	#superclass : #MDLLoginWidget,
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #rendering }
MDLLoginCardWidget >> renderContentOn: html [
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				class: 'mdl-card__login-widget';
				class: self htmlClass;
				title: titleLabel level: titleLevel;
				addTextContainer: [ :canvas | super renderContentOn: canvas ];
				yourself)
]
