rendering
renderMenuOn: html
	html mdlMenu
		bottomLeft;
		for: self id;
		class: 'menuButtonWidgetMenu';
		with: [ self objectsPossibilitiesWithLabel do: [ :anAssociation | self renderMenuItemOn: html withAssociation: anAssociation ] ]