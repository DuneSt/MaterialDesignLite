private
actionWith: anObject
	self action ifNotNil: [ :block | block value: anObject]