rendering
renderContentOn: html
	| div scrollCb clickCb |
	div := html div
		class: #listContainer;
		with: [ 
					| elementsToDisplay firstElementIndex |
					elementsToDisplay := self elementsDisplayList.
					firstElementIndex := self elements indexOf: elementsToDisplay first.
					html unorderedList
						class: #expList;
						with: [ 
									elementsToDisplay
										doWithIndex: [ :item :index | 
											self
												renderListItem: item
												index: index + firstElementIndex - 1
												indentedBy: 1
												on: html ] ] ].
	scrollCb := div
		storeCallback:
			(WAValueCallback
				on: [ :intervalRequest | 
					| interval |
					interval := intervalRequest substrings: ':'.
					self requestContext
						respond: [ :response | 
							self
								printHtmlForElementsFrom: interval first asNumber
								to: interval last asNumber
								on:
									(response
										doNotCache;
										contentType: WAMimeType textHtml;
										stream) ] ]).
	clickCb := div storeCallback: (WAValuesCallback on: self actionBlock values: self ).
	html script: (self expendableJsScript: html actionUrl cbId: scrollCb clickCbId: clickCb)