sections
miniFabButtons
	^ OrderedDictionary new
		add: 'Mini FAB' -> #renderMiniFabButtonCodeOn:;
		add: 'Colored' -> #renderMiniFabColoredButtonCodeOn:;
		yourself