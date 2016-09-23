code
renderCalendarOn: html
	html
		render:
			(MDLCalendarWidget new
				class: 'mdl-widget-demo-calendar';
				yourself)