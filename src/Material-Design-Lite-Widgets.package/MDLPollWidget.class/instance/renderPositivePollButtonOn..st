rendering
renderPositivePollButtonOn: html
	html mdlIconBadge
		overlap;
		dataBadge: poll positiveCount greaseString;
		with: [ html mdlButton
				rippleEffect;
				icon;
				onClick:
					(html jQuery ajax
						callback: [ self positivePollBlock value ];
						onComplete:
							((html jQuery id: pollWidgetId) load
								html: [ :ajaxHtml | self renderPollButtonsOn: ajaxHtml ]));
				with: [ html mdlIcon: 'thumb_up' ] ]