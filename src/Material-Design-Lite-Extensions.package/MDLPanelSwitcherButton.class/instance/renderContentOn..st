rendering
renderContentOn: html
	html div
		class: #'panel-switcher-button';
		id: self id;
		with: [ html div
				id: html nextId;
				class: #'panel-switcher-button__content';
				class: #'panel-switcher-selected' if: self isSelected;
				onClick:
					'$(".panel-switcher-selected").removeClass("panel-switcher-selected"); $(this).addClass("panel-switcher-selected")'
						js
						,
							((html jQuery id: self panelId) load
								html: [ :r | 
									self owner resetButtonSelection.
									self select.
									self actionBlock value: r ];
								onComplete: self onCompleteJs);
				with: self text ].
	self renderTooltipFor: html lastId on: html