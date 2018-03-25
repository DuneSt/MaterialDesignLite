sections
simpleCardWidget
	^ OrderedDictionary new
		add: 'Card widget' -> #renderCardOn:;
		add: 'Bordered actions card' -> #renderBorderedActionsCardOn:;
		yourself