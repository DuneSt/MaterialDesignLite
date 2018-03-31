rendering
renderScreenContentOn: html
	self renderTocOn: html.
	html heading level5
		class: 'section-title';
		id: 'progress-bar';
		with: 'PROGRESS BAR'.
	self
		render: self progressBar on: html;
		render: self indeterminateProgressBar on: html;
		render: self bufferingProgressBar on: html.
	html heading level5
		class: 'section-title';
		id: 'spinner';
		with: 'SPINNER'.
	self render: self spinner on: html