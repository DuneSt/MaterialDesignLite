private-accessing
items
	^ {(MDLExamplePaginationItem new
		firstName: 'Pepito';
		lastName: 'Pokitos';
		yourself).
	(MDLExamplePaginationItem new
		firstName: 'Ali';
		lastName: 'Baba';
		yourself)} asOrderedCollection