accessing
element: aCollection
	self deprecated: 'Uses #cells: instead' transformWith: '`@receiver element: `@statements1' -> '`@receiver cells: `@statements1'.
	^ self cells: aCollection