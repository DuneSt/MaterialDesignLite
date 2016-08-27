initialization
initialize
	super initialize.
	daysList := {'S' . 'M' . 'T' . 'W' . 'T' . 'F' . 'S'}.
	self class: 'mdl-calendar-widget'.
	calendar := MDLCalendar new