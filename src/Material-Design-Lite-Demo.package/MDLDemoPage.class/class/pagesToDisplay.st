accessing
pagesToDisplay
	^ (self allSubclasses reject: #isAbstract) sorted: [ :a :b | a priority < b priority ]