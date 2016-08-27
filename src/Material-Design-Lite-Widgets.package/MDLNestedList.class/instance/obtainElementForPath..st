private
obtainElementForPath: aPath
	| path |
	path := $: split: aPath.
	^ (path allButLast
		inject: self elements
		into: [ :elemts :anIndex | self childrenBlock value: (elemts at: anIndex asNumber) ]) at: path last asNumber