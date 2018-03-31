rendering
renderScreenContentOn: html
	self
		render: self snackbar on: html;
		render: self toast on: html