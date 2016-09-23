scoll
defineScrollCallbackOn: aDiv
	^ aDiv
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
										stream) ] ])