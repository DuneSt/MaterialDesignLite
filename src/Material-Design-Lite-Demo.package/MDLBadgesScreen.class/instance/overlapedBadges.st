sections
overlapedBadges
	^ OrderedDictionary new
		add: 'Overlaped' -> #renderOverlapedBadgeOn:;
		add: 'Not overlaped' -> #renderNotOverlapedBadgeOn:;
		yourself