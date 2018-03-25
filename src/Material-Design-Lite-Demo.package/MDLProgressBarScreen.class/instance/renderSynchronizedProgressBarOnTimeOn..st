demos
renderSynchronizedProgressBarOnTimeOn: html
	| progress lastTimestamp |
	progress := 0.
	lastTimestamp := 0.
	html
		render:
			(MDLProgressBarWidget
				progression: [ 
					(Time millisecondsSince: lastTimestamp) >= 400
						ifTrue: [ progress := progress + 0.01.
							lastTimestamp := Time millisecondClockValue ].
					progress ]
				every: 0.2 seconds)