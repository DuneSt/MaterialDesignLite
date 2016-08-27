accessing
removeUrl
	^ removeUrl ifNil: [ removeUrl := canvas actionUrl copy ]