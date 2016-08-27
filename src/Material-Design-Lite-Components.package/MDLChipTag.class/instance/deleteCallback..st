public api
deleteCallback: aNiladicValuable
	aNiladicValuable argumentCount > 0
		ifTrue: [ GRInvalidArgumentCount signal: 'Chip expect a niladic callback.' ].
	self removeUrl addField: (self storeCallback: (WAActionCallback on: aNiladicValuable)).
	self class: #'mdl-chip__deletable'