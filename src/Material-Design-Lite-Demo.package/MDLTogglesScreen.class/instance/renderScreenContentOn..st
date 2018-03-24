rendering
renderScreenContentOn: html
	self renderTocOn: html.
	html heading
		level5;
		class: 'section-title';
		id: 'checkbox-toggle';
		with: 'CHECKBOX'.
	self render: self checkbox on: html.
	html heading
		level5;
		class: 'section-title';
		id: 'radiobutton-toggle';
		with: 'RADIO BUTTON'.
	self render: self radioButton on: html.
	html heading
		level5;
		class: 'section-title';
		id: 'icon-toggle';
		with: 'ICON TOGGLE'.
	self render: self iconToggle on: html.
	html heading
		level5;
		class: 'section-title';
		id: 'switch-toggle';
		with: 'SWITCH TOGGLE'.
	self render: self switch on: html