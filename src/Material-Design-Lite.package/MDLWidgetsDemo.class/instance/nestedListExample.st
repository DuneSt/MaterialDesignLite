rendering
nestedListExample
	^ (MDLNestedList
		elements:
			{Morph.
			Boolean.
			Collection}
		children: [ :class | class subclasses ])
		format: #name;
		iconBlock: [ :class | 
					class methods
						detect: [ :met | met selector = #model ]
						ifFound: [ MDLListIconComponent named: #view_agenda helpText: 'I use a model' ]
						ifNone: [ 
							class methods
								detect: [ :met | met selector = #initialize ]
								ifFound: [ MDLListIconComponent named: #settings helpText: 'I am initialized' ]
								ifNone: [ MDLListIconComponent named: #inbox helpText: 'I am a simple classe' ] ] ];
		actionBlock: [ :class | 
					class crLog.
					self selectedEntity: class ];
		selectedEntity: self selectedEntity;
		helpBlock: [ :class | class comment ];
		yourself