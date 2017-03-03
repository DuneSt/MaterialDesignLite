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
				package: 'Material-Design-Lite-Components' with: [ 'MaterialColors' ];
				package: 'Material-Design-Lite-Core'
					with: [ spec
						requires: #('Seaside3' 'Material-Design-Lite-Components' 'Material-Design-Lite-Widgets') ];
				package: 'Material-Design-Lite-Magritte';
				package: 'Material-Design-Lite-Widgets'
					with: [ spec requires: #('Material-Design-Lite-Components') ].
			spec
				group: 'Magritte' with: #('default' 'Material-Design-Lite-Magritte');
				group: 'all' with: #('default');
				group: 'colors' with: #('MaterialColors');
				group: 'default'
					with:
					#('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' 'Material-Design-Lite-Core') ]