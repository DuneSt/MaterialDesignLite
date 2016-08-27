private-rendering
scriptUpdateDate: aDate on: html
	^ JSScript new
		add:
			(html jQuery ajax
				callback: [ self updateCalendarDayWith: aDate ];
				onComplete:
					((html jQuery id: calendarId) load html: [ :ajaxHtml | self renderCalendarCardOn: html ]));
		add: ((html jQuery: '.active') removeClass: 'active');
		add: (html jQuery this addClass: 'active');
		yourself