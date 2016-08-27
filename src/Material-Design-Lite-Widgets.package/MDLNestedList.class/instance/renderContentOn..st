rendering
renderContentOn: html
	| div scrollCb clickCb |
	div := html div
		class: #listContainer;
		with: [ 
					| elementsToDisplay firstElementIndex |
					elementsToDisplay := self elementsDisplayList.
					firstElementIndex := self elements indexOf: (elementsToDisplay ifEmpty: [ nil ] ifNotEmpty: [ :coll | coll first ]).
					html unorderedList
						class: #expList;
						with: [ 
									elementsToDisplay
										doWithIndex: [ :item :index | 
											self
												renderListTree: (self obtainTreeFor: item)
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
	clickCb := div
		storeCallback: (WAValueCallback on: [ :path | self actionBlock value: (self obtainElementForPath: path) ]).
	html script: (self expendableJsScript: html actionUrl cbId: scrollCb clickCbId: clickCb)