I am a component to display a pagination widget.

Description
------------------

I display buttons to navigate between pages on a component. I just need to know the max number of pages and then I will manages the pages. My container will be able to use my #currentPage to know what to display.

I will not display all the pages buttons, but the adjecents buttons of the current page. By default I show 2 buttons before and after the current button.

I offer the possibility to the user to define a block to update the page without refreshing the page via ajax.

Public API and Key Messages
-----------------

- #firstPage 			select the first page
- #previousPage 		select the page before the current page
- #nextPage 				select the page after the current page
- #lastPage 				select the last page
- #currentPage 			return the number of the current page. This should be use by my container to know what to show for the current page.

Examples
-----------------

	| myColl |
	myColl := 1 to: 150.
	(MDLPaginationComponent numberOfPages: [ myColl size / 24 roundUpTo: 1 ]) 	"Note the use of a block. If my collection change, the number of pages will be updated."
		adjacentsPagesToShow: 3;
		yourself
		
	MDLPaginationComponent
		numberOfPages: [ self numbersOfPages ]
		updateBlock: [ :s :html | 
			(s << (html jQuery id: #'main-content') load)
				html: [ :ajaxHtml | self renderMainContentOn: ajaxHtml ];
				onComplete: 'componentHandler.upgradeDom();' ] "The onComplete will update réinitialize the MDL elements"
 
Internal Representation and Key Implementation Points.
-----------------

    Instance Variables
	adjacentsPagesToShow:		<anInteger>				The number of pages to show before and after the current page
	currentPage:					<anInteger>				The current page
	numberOfPages:				<anIntegerOrBlock>		The maximum number of page or a block returning it
	updateBlock: 				<aBlock>					An optional block. If the block is not nil then the pagination widget will not refresh the page but update it with ajax. The block takes 2 parameters: a stream and a html canvas. See previous examples for more details.
