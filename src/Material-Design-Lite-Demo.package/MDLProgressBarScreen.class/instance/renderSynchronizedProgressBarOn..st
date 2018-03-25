demos
renderSynchronizedProgressBarOn: html
	| progression |
	progression := 0.
	html render: (MDLProgressBarWidget progression: [ progression ] every: 0.2 seconds).	"refresh time optional: 1s by default"
	html break.
	html mdlButton
		onClick: (html jQuery ajax callback: [ progression := progression + 0.2 ]);
		with: 'Click to progress'