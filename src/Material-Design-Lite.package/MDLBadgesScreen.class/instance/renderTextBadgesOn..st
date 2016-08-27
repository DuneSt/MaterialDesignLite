rendering
renderTextBadgesOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
			html mdlLayoutSpacer.
			html mdlCell size: 1; with: [ 
				html mdlBadge dataBadge: '4'; with: 'Inbox' ].
			html mdlCell size: 1; with: [ 
				html mdlBadge dataBadge: '♥'; with: 'Mood' ].
			html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell size: 1; with: 'Number'.
		html mdlCell size: 1; with: 'Icon'.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self textBadge1Code ].
	html preformatted: [ html code class: 'smalltalk'; with: self textBadge2Code ]