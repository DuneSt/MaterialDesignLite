initialization
initialize
	super initialize.
	daysList := {'S' . 'M' . 'T' . 'W' . 'T' . 'F' . 'S'}.
	calendar := MDLCalendar new.
	onCompleteScript := ''