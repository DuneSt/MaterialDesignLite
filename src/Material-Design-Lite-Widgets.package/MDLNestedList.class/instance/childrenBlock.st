accessing
childrenBlock
	^ childrenBlock ifNil: [ childrenBlock := [ :item | #() ] ]