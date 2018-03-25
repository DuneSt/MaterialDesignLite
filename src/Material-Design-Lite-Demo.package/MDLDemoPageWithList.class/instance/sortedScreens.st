accessing
sortedScreens
	^ self screens sorted: [ :a :b | a title < b title ]