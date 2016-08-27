uploaded
calendarWidgetCss
	^ '
.mdl-card.mdl-calendar-widget { 
	margin: auto;
}

.mdl-calendar-widget button { 
	font-size: 14px;
}

.mdl-calendar-widget button.disabled { 
	color: rgba(0, 0, 0, 0.4);
}

.mdl-calendar-widget .mdl-card__title, .mdl-calendar-widget button.active, .mdl-calendar-widget .mdl-cell.active { 
	background-color: rgb(63, 81, 181) !important;
	color: white;	
}

.mdl-calendar-widget .mdl-cell.year-cell, .mdl-cell.month-cell {
	cursor: pointer;
	border-radius: 10px;
	background-color: rgba(0, 0, 0, 0.2);
	padding: 5px;
}
'