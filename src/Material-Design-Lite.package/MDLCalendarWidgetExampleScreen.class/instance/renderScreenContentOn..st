rendering
renderScreenContentOn: html
	html
		render:
			(self widgetClass new
				class: 'mdl-widget-demo-calendar';
				yourself)