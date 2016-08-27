rendering
renderContentOn: html
	html div
		class: #'screen-content';
		with: [ 
					html heading level5
						class: #'section-title';
						with: self title.
					html paragraph: self description.
					self renderScreenContentOn: html ]