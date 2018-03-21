rendering
renderContentOn: html
	(html brush: brush)
		waterfall;
		with: [ 
			html mdlLayoutHeaderRow: [ html mdlLayoutTitle: self app activeScreen title ].
			html mdlLayoutTabBar: [ 
				html mdlLayoutSpacer.
				tabs keysAndValuesDo: [ :aLabel :aCallback | 
					aLabel = activeTab
						ifTrue: [ 
							html mdlLayoutTab
								callback: aCallback;
								isActive;
								with: aLabel ]
						ifFalse: [ 
							html mdlLayoutTab
								callback: aCallback;
								with: aLabel ] ].
				html mdlLayoutSpacer ] ]