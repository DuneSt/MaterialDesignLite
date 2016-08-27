initialization
initializeHeaderLinks
	^ OrderedCollection new
		add:
				(Dictionary new
						at: 'Link4' put: [ self doNothing ];
						at: 'Link5' put: [ self doNothing ];
						at: 'Link6' put: [ self doNothing ];
						yourself);
		add:
				(Dictionary new
						at: 'Link7' put: [ self doNothing ];
						at: 'Link8' put: [ self doNothing ];
						at: 'Link9' put: [ self doNothing ];
						yourself);
		add:
				(Dictionary new
						at: 'Link10' put: [ self doNothing ];
						at: 'Link11' put: [ self doNothing ];
						at: 'Link12' put: [ self doNothing ];
						yourself);
		yourself