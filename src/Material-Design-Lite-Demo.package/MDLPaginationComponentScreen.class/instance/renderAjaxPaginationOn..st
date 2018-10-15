rendering
renderAjaxPaginationOn: html
	| myColl renderBlock |
	myColl := 201 to: 640.
	paginationWidget2 := (MDLPaginationComponent numberOfPages: [ myColl size / 20 roundUpTo: 1 ])
		adjacentsPagesToShow: 3;
		updateBlock: [ :s :canvas | 
			(s << (canvas jQuery id: 'mdl-demo-pagination') load)
				html: [ :ajaxHtml | renderBlock value: ajaxHtml ];
				onComplete: 'componentHandler.upgradeDom();'	"The onComplete will update the MDL elements" ];
		yourself.
	renderBlock := [ :r | 
	| currentPage |
	currentPage := paginationWidget2 currentPage.
	(currentPage - 1) * 20 + 1 to: currentPage * 20 do: [ :ind | 
		r mdlCell
			class: 'grid-cell-demo';
			size: 2;
			with: (myColl at: ind) ] ].
	html
		div: [ html mdlGrid
				id: 'mdl-demo-pagination';
				with: [ renderBlock value: html ].
			html render: paginationWidget2 ]