baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec project: 'Seaside3' with: [
				spec
					className: #ConfigurationOfSeaside3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ].
		spec 
			package: 'Material-Design-Lite';
			package: 'Material-Design-Lite-Widgets';
			package: 'Material-Design-Lite-Components'.
		spec group: 'default' with: #('Material-Design-Lite' 'Material-Design-Lite-Widgets' 'Material-Design-Lite-Components' ). ].
