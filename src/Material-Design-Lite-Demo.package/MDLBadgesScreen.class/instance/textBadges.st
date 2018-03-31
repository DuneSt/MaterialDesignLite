sections
textBadges
	^ OrderedDictionary new
		add: 'Number' -> #renderNumberTextBadgeOn:;
		add: 'Icon' -> #renderIconTextBadgeOn:;
		yourself