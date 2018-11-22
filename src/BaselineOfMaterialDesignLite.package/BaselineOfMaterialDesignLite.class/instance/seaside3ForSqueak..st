dependencies
seaside3ForSqueak: spec
	spec
		baseline: 'Seaside3'
		with: [ spec
				loads: #('Core' 'JQuery' 'WebClient');
				repository: 'github://SeasideSt/Seaside/repository' ]