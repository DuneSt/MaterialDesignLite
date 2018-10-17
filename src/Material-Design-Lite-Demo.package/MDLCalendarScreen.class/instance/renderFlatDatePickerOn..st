demos
renderFlatDatePickerOn: html
	html div
		style: 'background-color: white;border: 1px grey solid;';
		with:
			(MDLFlatDatePicker new
				callback: [ :day | selectedDay := day ];
				currentDate: selectedDay;
				onCompleteScript: ((html jQuery id: 'selectedDay') load html: [ :r | 
					r text: 'Selected day: ' , selectedDay asString ]);
				yourself).
	html break.
	html div
		id: 'selectedDay';
		mdlTypographyFontBold;
		mdlTextColorPrimary;
		with: 'Selected day: ' , selectedDay asString