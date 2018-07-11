components
defaultList
	^ (MDLNestedList elements: self sortedScreens)
		iconBlock: [ :class :renderer | 
			renderer anchor
				class: 'mdl-list-icon';
				callback: [ self select: class ];
				with: [ renderer image
						url: class iconUrl ] ];
		listStyle: #demo;
		format: #title;
		helpBlock: #description;
		actionBlock: [ :screen | self select: screen ];
		selectedEntity: self selectedScreen class;
		yourself