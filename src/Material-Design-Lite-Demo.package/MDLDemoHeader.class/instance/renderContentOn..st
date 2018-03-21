rendering
renderContentOn: html
	html mdlLayoutHeader
		waterfall;
		with: [ html
				mdlLayoutHeaderRow: [ html mdlNavigationLink
						callback: [ "Just refresh" ];
						with: [ html mdlLayoutTitle: 'Material Design Lite for Seaside' ].
					self flag: #todo	"Add browser title" ] ]