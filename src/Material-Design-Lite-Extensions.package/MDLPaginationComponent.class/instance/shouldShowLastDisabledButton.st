testing
shouldShowLastDisabledButton
	^ self currentPage < (self numberOfPages - self adjacentsPagesToShow max: 0)