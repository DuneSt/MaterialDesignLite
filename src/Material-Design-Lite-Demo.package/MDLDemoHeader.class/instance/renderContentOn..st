rendering
renderContentOn: html
	html mdlLayoutHeader
		waterfall;
		with: [ html
				mdlLayoutHeaderRow: [ html mdlNavigationLink
						callback: [ "Just refresh" ];
						with: [ html
								mdlLayoutTitle: [ html image url: (MDLDemoLibrary urlOf: 'componentsPng').
									html text: '    Material Design Lite for Seaside' ] ].
					self flag: #todo.	"Add browser title"
					html mdlLayoutSpacer.
					html render: MDLVersionComponent new ].
			html
				mdlLayoutTabBar: [ self possiblePages
						do: [ :aClass | 
							html mdlLayoutTab
								callback: [ self displayInstanceOf: aClass ];
								isActiveIf: aClass = self rootComponent componentToDisplay class;
								with: aClass pageName ] ] ]