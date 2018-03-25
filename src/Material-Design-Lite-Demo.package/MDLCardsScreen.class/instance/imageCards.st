sections
imageCards
	^ OrderedDictionary new
		add: 'Image' -> #renderImageCardOn:;
		add: 'Event' -> #renderDateCardOn:;
		yourself