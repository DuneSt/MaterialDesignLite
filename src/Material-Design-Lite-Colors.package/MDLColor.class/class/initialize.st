initialization
initialize
	self allColorsDefinitions
		do: [ :aDefinition | 
			(self colors at: aDefinition first ifAbsentPut: [ Dictionary new ])
				at: aDefinition fifth
				put:
					((MDLColor
						r: aDefinition second
						g: aDefinition third
						b: aDefinition fourth
						range: 256)
						tint: aDefinition first;
						code: aDefinition fifth) ]