accessing
adjacentsPagesToShow
	^ adjacentsPagesToShow ifNil: [ adjacentsPagesToShow := self defaultNumberOfAdjacentsPagesToShow ]