sections
topMenus
	^ OrderedDictionary new
		add: 'Top left' -> #renderTopLeftMenuOn:;
		add: 'Top right' -> #renderTopRightMenuOn:;
		yourself