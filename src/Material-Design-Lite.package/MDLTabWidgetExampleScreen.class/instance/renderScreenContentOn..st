rendering
renderScreenContentOn: html
	html
		render:
			(self widgetClass new
				addTabNamed: 'Tab 1' content: 'First tab';
				addTabNamed: 'Tab 2' content: 'Second tab';
				yourself)