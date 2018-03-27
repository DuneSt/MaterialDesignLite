rendering
renderContentOn: html
	html mdlLayoutHeader
		waterfall;
		with: [ html
				mdlLayoutHeaderRow: [ "Just refresh"
					"Add browser title"
					html mdlNavigationLink
						callback: [  ];
						with: [ html
								mdlLayoutTitle: [ html image style: 'width: 40px; height: 40px;'; url: (MDLDemoLibrary urlOf: 'logoSvg').
									html text: '    Material Design Lite for Seaside' ] ].
					self flag: #todo.
					html mdlLayoutSpacer.
					html render: MDLVersionComponent new.
					self renderForkMeOnGithubOn: html ].
			html
				mdlLayoutTabBar: [ self possiblePages
						do: [ :aClass | 
							html mdlLayoutTab
								callback: [ self displayInstanceOf: aClass ];
								isActiveIf: aClass = self rootComponent componentToDisplay class;
								with: aClass pageName ] ] ]