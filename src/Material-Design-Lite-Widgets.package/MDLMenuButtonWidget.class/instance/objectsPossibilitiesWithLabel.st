accessing
objectsPossibilitiesWithLabel
	^ (self objectsPossibilities collect: [ :anObject | (self labelFor: anObject) -> anObject ]) sorted