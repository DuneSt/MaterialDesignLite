rendering
renderScreenContentOn: html
	self
		render: self typographies on: html;
		render: self fontOptions on: html;
		render: self textOptions on: html;
		render: self backgroundColorOptions on: html;
		render: self textColorOptions on: html