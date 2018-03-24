rendering
renderContentOn: html
	(html brush: brush)
		waterfall;
		with: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: self app activeScreen title ].
			html
				mdlLayoutTabBar: [ html mdlLayoutSpacer.
					tabs
						keysAndValuesDo: [ :aLabel :aCallback | 
							html mdlLayoutTab
								callback: aCallback;
								isActiveIf: aLabel = activeTab;
								with: aLabel ].
					html mdlLayoutSpacer ] ]