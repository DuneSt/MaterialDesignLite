"
Indicate loading and progress states.
"
Class {
	#name : #MDLProgressBarScreen,
	#superclass : #MDLWidgetDemo,
	#category : #'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLProgressBarScreen class >> icon [
	^ 'comploadingPng'
]

{ #category : #accessing }
MDLProgressBarScreen class >> title [
	^ 'Progress Bar'
]

{ #category : #sections }
MDLProgressBarScreen >> hiddenProgressBar [
	^ OrderedDictionary with: 'Hidden progress bar' -> #renderHiddenProgressBarOn:
]

{ #category : #demos }
MDLProgressBarScreen >> renderHiddenProgressBarOn: html [
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
]

{ #category : #rendering }
MDLProgressBarScreen >> renderScreenContentOn: html [
	self
		render: self synchronizedProgressBar on: html;
		render: self hiddenProgressBar on: html
]

{ #category : #demos }
MDLProgressBarScreen >> renderSynchronizedProgressBarOn: html [
	| progression |
	progression := 0.
	html render: (MDLProgressBarWidget progression: [ progression ] every: 0.2 seconds).	"refresh time optional: 1s by default"
	html break.
	html mdlButton
		onClick: (html jQuery ajax callback: [ progression := progression + 0.2 ]);
		with: 'Click to progress'
]

{ #category : #demos }
MDLProgressBarScreen >> renderSynchronizedProgressBarOnTimeOn: html [
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
]

{ #category : #sections }
MDLProgressBarScreen >> synchronizedProgressBar [
	^ OrderedDictionary
		with: 'Synchronized progress bar' -> #renderSynchronizedProgressBarOn:
		with: 'Synchronized progress bar 2' -> #renderSynchronizedProgressBarOnTimeOn:
]
