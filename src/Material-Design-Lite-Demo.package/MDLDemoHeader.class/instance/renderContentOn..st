rendering
renderContentOn: html
	html mdlLayoutHeader
		waterfall;
		with: [ html
				mdlLayoutHeaderRow: [ html mdlNavigationLink
						callback: [ "Just refresh" ];
						with: [ html mdlLayoutTitle: 'Material Design Lite for Seaside' ].
					self flag: #todo	"Add browser title" ].
			html
				mdlLayoutTabBar: [ self possiblePages
						keysAndValuesDo: [ :aLabel :aCallback | 
							self flag: #todo.	"We should not store the active tab here. We should ask to the root component."
							html mdlLayoutTab
								callback: aCallback;
								isActiveIf: aLabel = activeTab;
								with: aLabel ] ] ]