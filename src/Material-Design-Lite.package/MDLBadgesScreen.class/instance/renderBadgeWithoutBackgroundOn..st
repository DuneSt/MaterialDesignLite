rendering
renderBadgeWithoutBackgroundOn: html
	html div
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlIconBadge
						dataBadge: '♫';
						noBackground;
						with: 'flight_takeoff' ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlIconBadge
	dataBadge: ''♫'';
	noBackground;
	with: ''flight_takeoff''' ]