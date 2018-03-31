demos
renderHiddenProgressBarOn: html
	| progression progressBar |
	progression := 0.
	html render: (progressBar := MDLProgressBarWidget progression: [ progression ]) hidden.
	html break.
	html mdlButton
		onClick:
			(progressBar showScript: html)
				,
					(html jQuery ajax
						callback: [ [ [ progression < 1 ]
								whileTrue: [ progression := progression + (1 / 10).
									(Delay forSeconds: 1) wait ].
							Transcript show: progression ] fork ]);
		with: 'Click to show'