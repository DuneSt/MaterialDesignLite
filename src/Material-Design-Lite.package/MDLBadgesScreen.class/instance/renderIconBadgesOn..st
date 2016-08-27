rendering
renderIconBadgesOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
			html mdlLayoutSpacer.
			html mdlCell size: 1; with: [ 
				html mdlIconBadge
					dataBadge: '1';
					overlap;
					with: 'account_box' ].
			html mdlCell size: 1; with: [ 
				html mdlIconBadge
					dataBadge: '♥';
					overlap;
					with: 'account_box' ].
			html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell size: 1; with: 'Number'.
		html mdlCell size: 1; with: 'Icon'.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self iconBadge1Code ].
	html preformatted: [ html code class: 'smalltalk'; with: self iconBadge2Code ]