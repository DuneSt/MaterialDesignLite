"
Description
--------------------

The pagination widget allow the user to easily paginate some content on his page. You can either use it to just manage the pages then use the #currentPage to manage your page on the refresh or pass a block that will have the responsibility to update your page with some ajax.
"
Class {
	#name : #MDLPaginationComponentScreen,
	#superclass : #MDLExtensionsDemo,
	#instVars : [
		'paginationWidget',
		'paginationWidget2'
	],
	#category : 'Material-Design-Lite-Demo-Extensions'
}

{ #category : #accessing }
MDLPaginationComponentScreen class >> description [
	^ 'The pagination widget allow the user to easily paginate some content on his page. You can either use it to just manage the pages then use the #currentPage to manage your page on the refresh or pass a block that will have the responsibility to update your page with some ajax.'
]

{ #category : #accessing }
MDLPaginationComponentScreen class >> icon [
	^ 'paginationPng'
]

{ #category : #accessing }
MDLPaginationComponentScreen class >> title [
	^ 'Pagination'
]

{ #category : #sections }
MDLPaginationComponentScreen >> ajaxPagination [
	^ OrderedDictionary new
		add: 'Ajax Pagination Widget' -> #renderAjaxPaginationOn:;
		yourself
]

{ #category : #sections }
MDLPaginationComponentScreen >> pagination [
	^ OrderedDictionary new
		add: 'Pagination Widget' -> #renderPaginationOn:;
		yourself
]

{ #category : #rendering }
MDLPaginationComponentScreen >> renderAjaxPaginationOn: html [
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
]

{ #category : #rendering }
MDLPaginationComponentScreen >> renderPaginationOn: html [
	| myColl |
	myColl := 201 to: 640.
	paginationWidget
		ifNil: [ paginationWidget := (MDLPaginationComponent numberOfPages: [ (myColl size / 20) roundUpTo: 1 ]) "Note the use of a block. If my collection change, the number of pages will be updated."
				adjacentsPagesToShow: 3;
				yourself	 ].
	html
		div: [ html
				mdlGrid: [ | currentPage |
					currentPage := paginationWidget currentPage.
					(currentPage - 1) * 20 + 1 to: currentPage * 20 do: [ :ind | 
						html mdlCell
							class: 'grid-cell-demo';
							size: 2;
							with: (myColl at: ind) ] ].
			html render: paginationWidget ]
]

{ #category : #rendering }
MDLPaginationComponentScreen >> renderScreenContentOn: html [
	self
		render: self pagination fullWidth: true on: html;
		render: self ajaxPagination fullWidth: true on: html
]
