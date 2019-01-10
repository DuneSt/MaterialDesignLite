"
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
	(MDLPaginationComponent numberOfPages: [ myColl size / 24 roundUpTo: 1 ]) 	""Note the use of a block. If my collection change, the number of pages will be updated.""
		adjacentsPagesToShow: 3;
		yourself
		
	MDLPaginationComponent
		numberOfPages: [ self numbersOfPages ]
		updateBlock: [ :s :html | 
			(s << (html jQuery id: #'main-content') load)
				html: [ :ajaxHtml | self renderMainContentOn: ajaxHtml ];
				onComplete: 'componentHandler.upgradeDom();' ] ""The onComplete will update réinitialize the MDL elements""
 
Internal Representation and Key Implementation Points.
-----------------

    Instance Variables
	adjacentsPagesToShow:		<anInteger>				The number of pages to show before and after the current page
	currentPage:					<anInteger>				The current page
	numberOfPages:				<anIntegerOrBlock>		The maximum number of page or a block returning it
	updateBlock: 				<aBlock>					An optional block. If the block is not nil then the pagination widget will not refresh the page but update it with ajax. The block takes 2 parameters: a stream and a html canvas. See previous examples for more details.

"
Class {
	#name : #MDLPaginationComponent,
	#superclass : #MDLWidget,
	#instVars : [
		'currentPage',
		'numberOfPages',
		'adjacentsPagesToShow',
		'updateBlock'
	],
	#category : 'Material-Design-Lite-Extensions-Pagination'
}

{ #category : #accessing }
MDLPaginationComponent class >> defaultNumberOfAdjacentsPagesToShow [
	^ 2
]

{ #category : #'instance creation' }
MDLPaginationComponent class >> numberOfPages: aBlockOrInteger [
	^ self new
		numberOfPages: aBlockOrInteger;
		yourself
]

{ #category : #'instance creation' }
MDLPaginationComponent class >> numberOfPages: aBlockOrInteger updateBlock: aBlock [
	^ self new
		numberOfPages: aBlockOrInteger;
		updateBlock: aBlock;
		yourself
]

{ #category : #accessing }
MDLPaginationComponent >> adjacentsPagesToShow [
	^ adjacentsPagesToShow ifNil: [ adjacentsPagesToShow := self defaultNumberOfAdjacentsPagesToShow ]
]

{ #category : #accessing }
MDLPaginationComponent >> adjacentsPagesToShow: anInteger [
	self assert: anInteger positive.
	adjacentsPagesToShow := anInteger
]

{ #category : #accessing }
MDLPaginationComponent >> currentPage [
	^ currentPage value
]

{ #category : #accessing }
MDLPaginationComponent >> currentPage: anInteger [
	(anInteger between: self minPage and: self numberOfPages)
		ifFalse: [ SubscriptOutOfBounds
				signalFor: anInteger
				lowerBound: self minPage
				upperBound: self numberOfPages
				in: self ].
	currentPage := anInteger
]

{ #category : #accessing }
MDLPaginationComponent >> defaultNumberOfAdjacentsPagesToShow [
	^ self class defaultNumberOfAdjacentsPagesToShow
]

{ #category : #actions }
MDLPaginationComponent >> firstPage [
	^ self currentPage: self minPage
]

{ #category : #javascript }
MDLPaginationComponent >> jsAjaxPageChangedCallback: callback on: html [
	^ html jQuery ajax
		callback: callback;
		context: 'this' js;
		onSuccess:
			(html jQuery
				script: [ :s |
					s << ((html jQuery this parents: #'.mdl-pagination') load html: [ :ajaxHtml | self renderPaginationComponentOn: ajaxHtml ]).
					self updateBlock value: s value: html ])
]

{ #category : #actions }
MDLPaginationComponent >> lastPage [
	^ self currentPage: self numberOfPages
]

{ #category : #accessing }
MDLPaginationComponent >> minPage [
	^ 1 min: self numberOfPages
]

{ #category : #actions }
MDLPaginationComponent >> nextPage [
	^ self currentPage: self currentPage + 1
]

{ #category : #accessing }
MDLPaginationComponent >> numberOfPages [
	^ numberOfPages value
]

{ #category : #accessing }
MDLPaginationComponent >> numberOfPages: anIntegerOrBlock [
	numberOfPages := anIntegerOrBlock.
	self firstPage
]

{ #category : #components }
MDLPaginationComponent >> pageSelectionComponent [
	^ (MDLSelectWidget
		possibilities: (1 to: self numberOfPages)
		inputLabel: 'Page'
		labelBlock: [ :int | 
			String
				streamContents: [ :s | 
					s
						<< int;
						<< ' of ';
						<< self numberOfPages ] ]
		callback: [ :int | self currentPage: int ]
		selectedObject: self currentPage)
		beAutoSubmit;
		yourself
]

{ #category : #accessing }
MDLPaginationComponent >> pagesButtonsToRender [
	^ (self currentPage - self adjacentsPagesToShow max: 1) to: (self currentPage + self adjacentsPagesToShow min: self numberOfPages)
]

{ #category : #actions }
MDLPaginationComponent >> previousPage [
	^ self currentPage: self currentPage - 1
]

{ #category : #rendering }
MDLPaginationComponent >> renderButtonWithIconNamed: aSymbol callback: aBlock disabledIf: aBoolean on: html [
	(self updateBlock isNil and: [ aBoolean not ])
		ifTrue: [ html mdlAnchorButton
				accentColor;
				callback: aBlock;
				icon: aSymbol ]
		ifFalse: [ html mdlButton
				accentColor;
				disabled: aBoolean;
				onClick: [ self jsAjaxPageChangedCallback: aBlock on: html ] if: aBoolean not;
				icon: aSymbol ]
]

{ #category : #rendering }
MDLPaginationComponent >> renderContentOn: html [
	self ensureId: html.
	html div
		id: self id;
		class: 'mdl-pagination';
		with: [ self renderPaginationComponentOn: html ]
]

{ #category : #rendering }
MDLPaginationComponent >> renderFirstDisabledButtonOn: html [
	self shouldShowFirstDisabledButton ifFalse: [ ^ self ].

	html button
		disabled;
		with: '…'
]

{ #category : #rendering }
MDLPaginationComponent >> renderLastDisabledButtonOn: html [
	self shouldShowLastDisabledButton ifFalse: [ ^ self ].
	
	html button
		disabled;
		with: '…'
]

{ #category : #rendering }
MDLPaginationComponent >> renderNextButtonsOn: html [
	self
		renderButtonWithIconNamed: #keyboard_arrow_right
		callback: [ self nextPage ]
		disabledIf: self currentPage = self numberOfPages
		on: html.
	self
		renderButtonWithIconNamed: #last_page
		callback: [ self lastPage ]
		disabledIf: self currentPage = self numberOfPages
		on: html
]

{ #category : #rendering }
MDLPaginationComponent >> renderPagesButtonsOn: html [
	self pagesButtonsToRender
		do: [ :int | 
			self updateBlock
				ifNil: [ html anchor
						class: 'mdl-color-text--accent mdl-pagination__current' if: self currentPage = int;
						callback: [ self currentPage: int ];
						with: int ]
				ifNotNil: [ :blk | 
					html button
						class: 'mdl-color-text--accent mdl-pagination__current' if: self currentPage = int;
						onClick: (self jsAjaxPageChangedCallback: [ self currentPage: int ] on: html);
						with: int ] ]
]

{ #category : #rendering }
MDLPaginationComponent >> renderPaginationComponentOn: html [
	html div
		class: 'mdl-pagination__container';
		with: [ html div
				class: 'mdl-pagination__pages';
				with: [ self renderPreviousButtonsOn: html.
					html div
						class: 'mdl-pagination__pages-buttons';
						with: [ self renderFirstDisabledButtonOn: html.
							self renderPagesButtonsOn: html.
							self renderLastDisabledButtonOn: html ].
					self renderNextButtonsOn: html ].
			html form: self pageSelectionComponent ]
]

{ #category : #rendering }
MDLPaginationComponent >> renderPreviousButtonsOn: html [
	self
		renderButtonWithIconNamed: #first_page
		callback: [ self firstPage ]
		disabledIf: self currentPage = 1
		on: html.
	self
		renderButtonWithIconNamed: #keyboard_arrow_left
		callback: [ self previousPage ]
		disabledIf: self currentPage = 1
		on: html
]

{ #category : #testing }
MDLPaginationComponent >> shouldShowFirstDisabledButton [
	^ self currentPage > (self adjacentsPagesToShow + 1)
]

{ #category : #testing }
MDLPaginationComponent >> shouldShowLastDisabledButton [
	^ self currentPage < (self numberOfPages - self adjacentsPagesToShow max: 0)
]

{ #category : #accessing }
MDLPaginationComponent >> updateBlock [
	^ updateBlock
]

{ #category : #accessing }
MDLPaginationComponent >> updateBlock: aBlock [
	self assert: aBlock numArgs = 2 description: 'The update block should take 2 parameters. The first one is a stream and the second a html canvas. '.

	updateBlock := aBlock
]
