components
defaultList
	^ (MDLNestedList elements: self sortedScreens)
		iconBlock: [ :class :renderer | renderer image url: class iconUrl ];
		listStyle: #demo;
		format: #title;
		helpBlock: #description;
		actionBlock: [ :screen | self selectedScreen: screen new ];
		selectedEntity: self selectedScreen class;
		yourself