rendering
renderCalendarTitleOn: html
	html div
		mdlBackgroundColorPrimary;
		class: 'mdl-calendar__title mdl-color-text--primary-contrast';
		with: [ html heading
				level3;
				with: self calendar printDateForHeader ]