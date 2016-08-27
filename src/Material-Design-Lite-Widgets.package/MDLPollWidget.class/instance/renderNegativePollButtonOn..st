rendering
renderNegativePollButtonOn: html
	html mdlIconBadge
		overlap;
		dataBadge: poll negativeCount greaseString;
		with: [ html mdlButton
				rippleEffect;
				icon;
				onClick:
					(html jQuery ajax
						callback: [ self negativePollBlock value ];
						onComplete:
							((html jQuery id: pollWidgetId) load
								html: [ :ajaxHtml | self renderPollButtonsOn: ajaxHtml ]));
				with: [ html mdlIcon: 'thumb_down' ] ]