private
obtainElementForPath: aPath
	| path |
	path := $: split: aPath.
	^ (path allButLast
		inject: self filteredElements
		into: [ :elemts :anIndex | self childrenBlock value: (elemts at: anIndex asNumber) ]) at: path last asNumber