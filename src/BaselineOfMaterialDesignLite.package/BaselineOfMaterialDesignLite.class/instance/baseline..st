baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside30: spec;
				magritte: spec.
			spec
				package: #'Material-Design-Lite-Colors';
				package: 'Material-Design-Lite-Components';
				package: #'Material-Design-Lite-Core' with: [ spec requires: #('Seaside30' 'Material-Design-Lite-Components' 'Material-Design-Lite-Widgets') ];
				package: 'Material-Design-Lite-Magritte';
				package: 'Material-Design-Lite-Widgets' with: [ spec requires: #('Material-Design-Lite-Components') ].
			spec
				group: 'Magritte' with: #('default' 'Material-Design-Lite-Magritte');
				group: 'all' with: #('colors' 'default');
				group: 'colors' with: #(#'Material-Design-Lite-Colors');
				group: 'default' with: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' #'Material-Design-Lite-Colors' #'Material-Design-Lite-Core') ]