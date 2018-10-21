"
I am a baseline of MaterialDesignLite. Read more at: https://github.com/DuneSt/MaterialDesignLite
"
Class {
	#name : #BaselineOfMaterialDesignLite,
	#superclass : #BaselineOf,
	#category : 'BaselineOfMaterialDesignLite'
}

{ #category : #baseline }
BaselineOfMaterialDesignLite >> baseline: spec [
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
				package: 'Material-Design-Lite-Extensions' with: [ spec requires: #('Material-Design-Lite-Utils' 'Material-Design-Lite-Components') ];
				package: 'Material-Design-Lite-Extensions-Tests' with: [ spec requires: #('Material-Design-Lite-Extensions' 'Material-Design-Lite-Components-Tests') ].
			
			"Groups"
			spec
				group: 'Magritte' with: #('Material-Design-Lite-Magritte');
				group: 'all' with: #('default' 'Magritte');
				group: 'extensions' with: #('Material-Design-Lite-Extensions');
				group: 'core' with: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' 'Material-Design-Lite-Core' 'Material-Design-Lite-Utils');
				group: 'default' with: #('core' 'tests' 'demo');
				group: 'demo' with: #('Material-Design-Lite-Demo');
				group: 'tests' with: #('Material-Design-Lite-Components-Tests' 'Material-Design-Lite-Widgets-Tests' 'Material-Design-Lite-Extensions-Tests' 'Material-Design-Lite-Core-Tests') ]
]

{ #category : #dependencies }
BaselineOfMaterialDesignLite >> fileLibraryHelper: spec [
	"I small project to help developers to manage the files in the FileLibrary."

	spec
		baseline: 'FileLibraryHelper'
		with: [ spec repository: 'github://jecisc/FileLibraryHelper/src' ]
]

{ #category : #dependencies }
BaselineOfMaterialDesignLite >> magritte: spec [
	spec
		project: 'Magritte3'
		with: [ spec
				className: #ConfigurationOfMagritte3;
				versionString: #'release3';
				loads: #('Seaside');
				repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main/' ]
]

{ #category : #dependencies }
BaselineOfMaterialDesignLite >> materialColors: spec [
	spec
		baseline: 'MaterialColors'
		with: [ spec repository: 'github://DuneSt/MaterialColors:v2.x.x/src' ]
]

{ #category : #accessing }
BaselineOfMaterialDesignLite >> projectClass [
	^ [ self class environment at: #MetacelloCypressBaselineProject ]
		on: NotFound
		do: [ super projectClass ]
]

{ #category : #dependencies }
BaselineOfMaterialDesignLite >> seaside3: spec [
	spec
		baseline: 'Seaside3'
		with: [ spec
				loads: #('Core' 'JQuery' 'Zinc');
				repository: 'github://SeasideSt/Seaside/repository' ]
]
