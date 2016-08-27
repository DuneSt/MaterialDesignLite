rendering
renderContentOn: html
	html mdlLayout fixedDrawer
		with: [ html
				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Components'.
					screens
						do: [ :each | 
							html
								mdlNavigation: [ (activeScreen == each
										ifTrue: [ html mdlNavigationLink
												class: 'is-active';
												class: 'mdl-color-text--accent' ]
										ifFalse: [ html mdlNavigationLink callback: [ self activeScreen: each ] ])
										with: [
											html text: each title ] ] ] ].
			html mdlLayoutContent: [ html render: activeScreen ] ]