rendering
renderScreenContentOn: html
	html
		render:
			((self widgetClass newWithItems: self items)
				addHeading: 'First name';
				addHeading: 'Last name';
				pageSize: 1;
				yourself)