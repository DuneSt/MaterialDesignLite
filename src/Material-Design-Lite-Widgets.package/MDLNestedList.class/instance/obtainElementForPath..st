private
obtainElementForPath: aPath
	| path |
	path := $: split: aPath.
	^ (path allButLast
		inject: self filteredElements
		into: [ :elemts :anIndex | 
			| res |
			res := self childrenBlock value: (elemts at: anIndex asNumber).
			self childrenSortBlock ifNil: [ res ] ifNotNil: [ :sortBlock | res sorted: sortBlock ] ]) at: path last asNumber