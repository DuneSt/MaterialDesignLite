private-rendering
renderYearsOn: html
	html mdlGrid
		style: 'text-align: center';
		with: [ self renderYearsHeaderOn: html.
			calendar yearsInterval
				do: [ :aYear | 
					html mdlCell
						class: 'year-cell';
						class:
							(aYear = calendar currentDate year
								ifTrue: [ 'active' ]);
						onClick:
							(html jQuery ajax
								callback: [ calendar goToYear: aYear ];
								onComplete:
									((html jQuery id: calendarId) load
										html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));
						desktopSize: 4;
						with: aYear greaseString ] ]