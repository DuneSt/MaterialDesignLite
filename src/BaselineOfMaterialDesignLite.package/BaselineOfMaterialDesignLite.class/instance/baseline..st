baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			"Dependencies"
			self
				seaside3: spec;
				fileLibraryHelper: spec;
				materialColors: spec;
				magritte: spec.
				
			"Packages"
			spec
				package: 'Material-Design-Lite-Components' with: [ spec requires: #('MaterialColors' 'Seaside3') ];
				package: 'Material-Design-Lite-Components-Tests' with: [ spec requires: #('Material-Design-Lite-Components') ];
				package: 'Material-Design-Lite-Core' with: [ spec requires: #('Material-Design-Lite-Utils' 'Material-Design-Lite-Components' 'Material-Design-Lite-Widgets' 'Material-Design-Lite-Extensions') ];
				package: 'Material-Design-Lite-Core-Tests' with: [ spec requires: #('Material-Design-Lite-Core' 'Material-Design-Lite-Components-Tests') ];
				package: 'Material-Design-Lite-Demo' with: [ spec requires: #('Material-Design-Lite-Core') ];
				package: 'Material-Design-Lite-Magritte' with: [ spec requires: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components') ];
				package: 'Material-Design-Lite-Widgets' with: [ spec requires: #('Material-Design-Lite-Components') ];
				package: 'Material-Design-Lite-Widgets-Tests' with: [ spec requires: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components-Tests') ];
				package: 'Material-Design-Lite-Utils' with: [ spec requires: #('Seaside3' 'FileLibraryHelper') ];
				package: 'Material-Design-Lite-Extensions' with: [ spec requires: #('Material-Design-Lite-Utils') ];
				package: 'Material-Design-Lite-Extensions-Tests' with: [ spec requires: #('Material-Design-Lite-Extensions' 'Material-Design-Lite-Components-Tests') ].
				
			"Groups"
			spec
				group: 'Magritte' with: #('Material-Design-Lite-Magritte');
				group: 'all' with: #('default' 'Magritte');
				group: 'colors' with: #('MaterialColors');
				group: 'extensions' with: #('Material-Design-Lite-Extensions');
				group: 'core' with: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' 'Material-Design-Lite-Core' 'Material-Design-Lite-Utils');
				group: 'default' with: #('core' 'tests' 'demo');
				group: 'demo' with: #('Material-Design-Lite-Demo');
				group: 'tests' with: #('Material-Design-Lite-Components-Tests' 'Material-Design-Lite-Widgets-Tests' 'Material-Design-Lite-Extensions-Tests' 'Material-Design-Lite-Core-Tests') ]