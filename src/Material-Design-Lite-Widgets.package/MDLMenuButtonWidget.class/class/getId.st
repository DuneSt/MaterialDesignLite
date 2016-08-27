creation
getId

	id ifNil: [ id := 1 ].
	^ (id := id + 1) asString