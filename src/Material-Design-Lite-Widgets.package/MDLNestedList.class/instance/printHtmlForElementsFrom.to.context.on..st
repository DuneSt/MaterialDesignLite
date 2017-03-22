rendering
printHtmlForElementsFrom: start to: end context: aContext on: stream
	self
		printResultOf: [ :html | 
			(start <= self filteredElements size and: [ end >= 1 ])
				ifTrue: [ 
					self filteredElements
						from: (start max: 1)
						to: (end min: self filteredElements size)
						do: [ :anElement | 
							self
								renderListTree: (self obtainTreeFor: anElement)
								index: (self filteredElements indexOf: anElement)
								indentedBy: 1
								on: html ] ] ]
		context: aContext
		on: stream