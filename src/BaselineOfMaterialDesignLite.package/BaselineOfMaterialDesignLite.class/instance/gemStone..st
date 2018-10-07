baseline
gemStone: spec
	spec
		for: #gemstone
		do: [ spec baseline: 'OrderedDictionary' with: [ spec repository: 'github://GsDevKit/OrderedDictionary:v1.x.x/src' ].
			spec
				package: 'PackageManifest' with: [ spec repository: 'http://smalltalkhub.com/mc/pdebruic/PackageManifest/main' ];
				package: 'Material-Design-Lite-GemStone' with: [ spec requires: 'Material-Design-Lite-Components' ];
				package: 'Material-Design-Lite-Extensions' with: [ spec requires: #('PackageManifest') ];
				package: 'Material-Design-Lite-Components' with: [ spec requires: #('PackageManifest' 'OrderedDictionary') ];
				package: 'Material-Design-Lite-Components' with: [ spec includes: 'Material-Design-Lite-GemStone' ] ]