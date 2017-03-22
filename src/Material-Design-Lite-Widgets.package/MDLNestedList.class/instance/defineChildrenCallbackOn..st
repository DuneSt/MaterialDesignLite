javascript
defineChildrenCallbackOn: aDiv
	^ aDiv
		storeCallback:
			(WAValueCallback
				on: [ :intervalRequest | 
					self requestContext
						respond: [ :response | 
							self
								printSublistFor: intervalRequest
								context: aDiv canvas context
								on:
									(response
										doNotCache;
										contentType: WAMimeType textHtml;
										stream) ] ])