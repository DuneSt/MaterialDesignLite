accessing
pagesButtonsToRender
	^ (self currentPage - self adjacentsPagesToShow max: 1) to: (self currentPage + self adjacentsPagesToShow min: self numberOfPages)