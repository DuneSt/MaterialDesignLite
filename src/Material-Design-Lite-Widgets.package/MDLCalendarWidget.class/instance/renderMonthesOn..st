private-rendering
renderMonthesOn: html
	html mdlGrid
		style: 'text-align: center';
		with: [ Date monthNames
				do: [ :aString | 
					html mdlCell
						class: 'month-cell';
						class: 'active' if: aString = self currentDate monthName;
						onClick:
							(html jQuery ajax
								callback: [ self calendar goToMonth: (Month indexOfMonth: aString) ];
								onComplete: ((html jQuery id: self id) load html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));
						desktopSize: 4;
						with: aString ] ]