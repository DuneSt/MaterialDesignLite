private-rendering
renderMonthesOn: html
	html mdlGrid
		style: 'text-align: center';
		with: [ self monthesNames
				do: [ :aString | 
					html mdlCell
						class: 'month-cell';
						class:
							(aString = calendar currentDate monthName
								ifTrue: [ 'active' ]);
						onClick:
							(html jQuery ajax
								callback: [ calendar goToMonth: (Month indexOfMonth: aString) ];
								onComplete:
									((html jQuery id: calendarId) load
										html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));
						desktopSize: 4;
						with: aString ] ]