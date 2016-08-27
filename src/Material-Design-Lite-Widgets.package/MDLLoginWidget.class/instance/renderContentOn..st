rendering
renderContentOn: html
	html
		form: [ html
				render:
					(MDLCardWidget new
						shadow: 2;
						class: 'mdl-card__login-widget';
						class: (properties at: #class: ifPresent: [ :aString | aString ] ifAbsent: [ '' ]);
						title: titleLabel level: titleLevel;
						addTextContainer: self loginWidget;
						addTextContainer: self passwordWidget;
						addAction: [ html mdlButton
								raised;
								accentColor;
								beSubmit;
								callback: [ callback value: login value: password ];
								with: submitLabel ];
						yourself) ]