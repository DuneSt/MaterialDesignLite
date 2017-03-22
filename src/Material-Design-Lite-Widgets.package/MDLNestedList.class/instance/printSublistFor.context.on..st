rendering
printSublistFor: anIntervalRequest context: aContext on: stream
	self
		printResultOf: [ :html | 
			self
				renderSublistOf: (self obtainTreeFor: (self obtainElementForPath: anIntervalRequest)) children
				parentIndex: anIntervalRequest
				indentedBy: (anIntervalRequest occurrencesOf: $:) + 1
				on: html ]
		context: aContext
		on: stream