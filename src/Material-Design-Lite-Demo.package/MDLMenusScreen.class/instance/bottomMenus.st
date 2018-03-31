sections
bottomMenus
	^ OrderedDictionary new
		add: 'Lower left' -> #renderLowerLeftMenuOn:;
		add: 'Lower right' -> #renderLowerRightMenuOn:;
		yourself