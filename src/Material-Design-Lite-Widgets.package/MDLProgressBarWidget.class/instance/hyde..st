accessing
hyde: aBoolean
	self deprecated: 'Uses #hide: instead' transformWith: '`@receiver hyde: `@statements1' -> '`@receiver hide: `@statements1'.
	^ self hide: aBoolean