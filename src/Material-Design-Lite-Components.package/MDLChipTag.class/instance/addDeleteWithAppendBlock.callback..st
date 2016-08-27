private
addDeleteWithAppendBlock: aBlock callback: aNiladicValuable
	aNiladicValuable argumentCount > 0
		ifTrue: [ GRInvalidArgumentCount signal: 'Chip expect a niladic callback.' ].
	self addDeleteWithAppendBlock: aBlock