code
renderSynchronizedProgressBarOn: html
	| progression |
	progression := 0.
	html
		render:
			((MDLProgressBarWidget progression: [ progression ])
				refreshTime: 0.2 seconds; "optional with 1s by default"
				yourself).
	html break.
	html mdlButton
		onClick: (html jQuery ajax callback: [ progression := progression + 0.2 ]);
		with: 'Click on me to progress'