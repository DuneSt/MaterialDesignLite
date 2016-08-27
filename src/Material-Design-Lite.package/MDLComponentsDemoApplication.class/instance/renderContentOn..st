rendering
renderContentOn: html
	html mdlLayout fixedDrawer
		with: [ html
				mdlLayoutDrawer
				class: 'mdl-color--white';
				with: [ html mdlLayoutTitle: 'Components'.
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
			html mdlLayoutContent
				class: 'mdl-color--light-grey';with: [ html render: activeScreen ] ]