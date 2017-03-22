javascript
defineScrollCallbackOn: aDiv
	^ aDiv
		storeCallback:
			(WAValueCallback
				on: [ :intervalRequest | 
					| interval |
					interval := $: split: intervalRequest.
					self requestContext
						respond: [ :response | 
							self
								printHtmlForElementsFrom: interval first asNumber
								to: interval last asNumber
								context: aDiv canvas context
								on:
									(response
										doNotCache;
										contentType: WAMimeType textHtml;
										stream) ] ])