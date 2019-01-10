"
Screen to render MDLCardWidget examples
"
Class {
	#name : #MDLCardWidgetScreen,
	#superclass : #MDLWidgetDemo,
	#category : 'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLCardWidgetScreen class >> description [
	^ 'A Card widget to make easy the use of the cards.'
]

{ #category : #accessing }
MDLCardWidgetScreen class >> icon [
	^ 'compcardsPng'
]

{ #category : #accessing }
MDLCardWidgetScreen class >> title [
	^ 'Cards'
]

{ #category : #demos }
MDLCardWidgetScreen >> renderAccentColorCardOn: html [
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				accentColorTitle: 'Card widget example';
				addTextContainer: (String loremIpsum: 100);
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				actionsBordered;
				yourself)
]

{ #category : #demos }
MDLCardWidgetScreen >> renderBorderedActionsCardOn: html [
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				title: 'Card widget example' level: 2;
				addTextContainer: (String loremIpsum: 100);
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				actionsBordered;
				yourself)
]

{ #category : #demos }
MDLCardWidgetScreen >> renderCardOn: html [
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				title: 'Card widget example';
				addTextContainer: (String loremIpsum: 100);
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				yourself)
]

{ #category : #demos }
MDLCardWidgetScreen >> renderPrimaryColorCardOn: html [
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				primaryColorTitle: 'Card widget example';
				addTextContainer: (String loremIpsum: 100);
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				actionsBordered;
				yourself)
]

{ #category : #rendering }
MDLCardWidgetScreen >> renderScreenContentOn: html [
	self
		render: self simpleCardWidget on: html;
		render: self titleColorCardWidget on: html
]

{ #category : #sections }
MDLCardWidgetScreen >> simpleCardWidget [
	^ OrderedDictionary new
		add: 'Card widget' -> #renderCardOn:;
		add: 'Bordered actions card' -> #renderBorderedActionsCardOn:;
		yourself
]

{ #category : #sections }
MDLCardWidgetScreen >> titleColorCardWidget [
	^ OrderedDictionary new
		add: 'Primary color card' -> #renderPrimaryColorCardOn:;
		add: 'Accent color card' -> #renderAccentColorCardOn:;
		yourself
]
