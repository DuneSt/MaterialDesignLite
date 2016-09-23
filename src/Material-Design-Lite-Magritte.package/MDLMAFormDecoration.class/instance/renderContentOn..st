rendering
renderContentOn: html
	html form
		class: 'magritte';
		multipart: self requiresMultipartForm;
		defaultAction: [ self execute: self default ];
		with: [ self renderNextOn: html.
			self renderButtonsOn: html ]