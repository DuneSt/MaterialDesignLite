accessing
iconBadges
	^ OrderedDictionary new
		add: 'Number' -> #renderNumberBadgeOn:;
		add: 'Icon' -> #renderIconBadgeOn:;
		yourself