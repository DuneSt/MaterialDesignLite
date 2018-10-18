Extension { #name : #Time }

{ #category : #'*Material-Design-Lite-Components' }
Time >> forHtmlTextArea [
	^ String streamContents: [ :s | self print24: true showSeconds: false on: s ]
]
