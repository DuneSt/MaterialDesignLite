rendering
renderBadgeWithoutBackgroundOn: html
	html div
		class: 'mdl-typography--text-center';
		with: [ html mdlIconBadge
				dataBadge: '♫';
				noBackground;
				with: 'flight_takeoff' ].
	html
		code: [ html preformatted
				with:
					'html mdlIconBadge
	dataBadge: ''♫'';
	noBackground;
	with: ''flight_takeoff''' ]