baseline
gemStone: spec
	spec
		for: #gemstone
		do: [ spec
				package: 'PackageManifest'
					with: [ spec repository: 'http://smalltalkhub.com/mc/pdebruic/PackageManifest/main' ];
				package: 'OrderedDictionary'
					with: [ spec repository: 'http://smalltalkhub.com/mc/pdebruic/OrderedDictionary/main' ];
				package: 'Material-Design-Lite-GemStone'
					with: [ spec requires: 'Material-Design-Lite-Components' ].
			spec
				package: 'Material-Design-Lite-Components'
				with: [ spec requires: #('PackageManifest' 'OrderedDictionary') ].
			"Groups"
			spec
				group: 'Magritte'
					with: #('Material-Design-Lite-Magritte' 'Material-Design-Lite-GemStone');
				group: 'colors' with: #('MaterialColors' 'Material-Design-Lite-GemStone');
				group: 'extensions'
					with: #('Material-Design-Lite-Extensions' 'Material-Design-Lite-GemStone');
				group: 'core'
					with:
					#('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' 'Material-Design-Lite-Core' 'Material-Design-Lite-Utils' 'Material-Design-Lite-GemStone');
				group: 'demo' with: #('Material-Design-Lite-Demo' 'Material-Design-Lite-GemStone');
				group: 'tests'
					with:
					#('Material-Design-Lite-Components-Tests' 'Material-Design-Lite-Widgets-Tests' 'Material-Design-Lite-Extensions-Tests' 'Material-Design-Lite-Core-Tests' 'Material-Design-Lite-GemStone') ]