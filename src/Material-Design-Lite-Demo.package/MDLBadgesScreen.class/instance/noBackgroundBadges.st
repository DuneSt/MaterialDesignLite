sections
noBackgroundBadges
	^ OrderedDictionary new
		add: 'Number with no background' -> #renderNoBackgroundNumberBadgeOn:;
		add: 'Icon with no background' -> #renderNoBackgroundIconBadgeOn:;
		yourself