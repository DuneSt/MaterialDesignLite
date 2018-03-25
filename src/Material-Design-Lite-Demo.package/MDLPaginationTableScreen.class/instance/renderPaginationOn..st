demos
renderPaginationOn: html
	| items |
	items := {(MDLExamplePaginationItem firstName: 'Pepito' lastName: 'Pokitos'). (MDLExamplePaginationItem firstName: 'Ali' lastName: 'Baba')}.
	html
		render:
			((MDLPaginationWidget newWithItems: items)
				addHeading: 'First name';
				addHeading: 'Last name';
				pageSize: 1;
				yourself)