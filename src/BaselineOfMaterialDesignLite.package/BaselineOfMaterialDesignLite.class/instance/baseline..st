baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside3: spec;
				materialColors: spec;
				magritte: spec.
			spec
				package: 'Material-Design-Lite-Components' with: [ spec requires: #('MaterialColors') ];
				package: 'Material-Design-Lite-Core' with: [ spec requires: #('Material-Design-Lite-Utils' 'Material-Design-Lite-Components' 'Material-Design-Lite-Widgets') ];
				package: 'Material-Design-Lite-Magritte' with: [ spec requires: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components') ];
				package: 'Material-Design-Lite-Widgets' with: [ spec requires: #('Material-Design-Lite-Components') ];
				package: 'Material-Design-Lite-Utils' with: [ spec requires: #('Seaside3') ].
			spec
				group: 'Magritte' with: #('Material-Design-Lite-Magritte');
				group: 'all' with: #('default' 'Magritte');
				group: 'colors' with: #('MaterialColors');
				group: 'default' with: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' 'Material-Design-Lite-Core' 'Material-Design-Lite-Utils') ]