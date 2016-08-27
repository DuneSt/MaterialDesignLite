baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/KevinLanvin/MaterialDesignLite/main/'.
		spec 
			project: 'Magritte3' with: [
				spec
					className: #ConfigurationOfMagritte3;
					versionString: #'stable';
					loads: #('Seaside' );
					repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main/' ];
			project: 'Seaside3' with: [
				spec
					className: #ConfigurationOfSeaside3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ].
		spec 
			package: #'Material-Design-Lite-Colors';
			package: 'Material-Design-Lite-Components';
			package: #'Material-Design-Lite-Core' with: [
				spec requires: #('Seaside3' 'Material-Design-Lite-Components' 'Material-Design-Lite-Widgets' ). ];
			package: 'Material-Design-Lite-Magritte';
			package: 'Material-Design-Lite-Widgets' with: [
				spec requires: #('Material-Design-Lite-Components' ). ].
		spec 
			group: 'Magritte' with: #('default' 'Material-Design-Lite-Magritte' );
			group: 'all' with: #('colors' 'default' );
			group: 'colors' with: #(#'Material-Design-Lite-Colors' );
			group: 'default' with: #('Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' #'Material-Design-Lite-Colors' #'Material-Design-Lite-Core' ). ].
