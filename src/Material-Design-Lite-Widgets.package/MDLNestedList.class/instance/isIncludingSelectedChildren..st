positionning
isIncludingSelectedChildren: anElement
	^ (self childrenBlock value: anElement) anySatisfy: [ :aChildren | aChildren = selectedEntity or: [ self isIncludingSelectedChildren: aChildren ] ]