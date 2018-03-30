rendering
renderContentOn: html
	html mdlLayoutHeader
		waterfall;
		with: [ html
				mdlLayoutHeaderRow: [ html mdlNavigationLink
						callback: [ "Just refresh" ];
						with: [ html
								mdlLayoutTitle: [ html image
										style: 'width: 40px; height: 40px;';
										url: (MDLDemoLibrary urlOf: 'logoSvg').
									html text: '    Material Design Lite for Seaside' ] ].
					html mdlLayoutSpacer.
					html text: '	Version ' , self version.
					self renderForkMeOnGithubOn: html ].
			html
				mdlLayoutTabBar: [ self possiblePages
						do: [ :aClass | 
							html mdlLayoutTab
								callback: [ self displayInstanceOf: aClass ];
								isActiveIf: aClass = self rootComponent componentToDisplay class;
								with: aClass pageName ] ] ]