baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/KevinLanvin/MaterialDesignLite/main/'.
		spec project: 'Seaside3' with: [
				spec
					className: #ConfigurationOfSeaside3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ].
		spec 
			package: 'Material-Design-Lite' with: [
				spec requires: #('Seaside3' 'Material-Design-Lite-Components' 'Material-Design-Lite-Widgets' ). ];
			package: #'Material-Design-Lite-Colors';
			package: 'Material-Design-Lite-Components';
			package: 'Material-Design-Lite-Widgets' with: [
				spec requires: #('Material-Design-Lite-Components' ). ].
		spec 
			group: 'all' with: #('colors' 'default' );
			group: 'colors' with: #(#'Material-Design-Lite-Colors' );
			group: 'default' with: #('Material-Design-Lite' 'Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' #'Material-Design-Lite-Colors' ). ].
