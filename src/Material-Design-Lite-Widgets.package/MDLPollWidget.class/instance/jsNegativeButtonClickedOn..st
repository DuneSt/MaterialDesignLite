javascript
jsNegativeButtonClickedOn: html
	^ (html jQuery id: self id) load
		html: [ :ajaxHtml | 
			self addNegativeVote.
			self renderPollButtonsOn: ajaxHtml ]