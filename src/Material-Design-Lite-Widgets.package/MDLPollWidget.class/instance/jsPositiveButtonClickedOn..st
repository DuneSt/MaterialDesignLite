javascript
jsPositiveButtonClickedOn: html
	^ (html jQuery id: self id) load
		html: [ :ajaxHtml | 
			self addPositiveVote.
			self renderPollButtonsOn: ajaxHtml ]