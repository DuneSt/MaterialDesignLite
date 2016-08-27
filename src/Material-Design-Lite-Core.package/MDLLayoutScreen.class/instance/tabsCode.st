code
tabsCode 
	^  'html mdlTabs: [ 
	html mdlTabBar: [ 
		html mdlTab isActive; url: ''#starkpanel''; with: ''Starks''.
		html mdlTab url: ''#lanisterpanel''; with: ''Lanisters''.
		html mdlTab url: ''#targaryenpanel''; with: ''Targaryens'' ].
	html mdlTabsPanel isActive; id: ''starkpanel''; with: [ 
		html unorderedList: [ 
			html listItem: ''Eddard''.
			html listItem: ''Catelyn''.
			html listItem: ''Robb''.
			html listItem: ''Sansa''.
			html listItem: ''Brandon''.
			html listItem: ''Rickon''.
			html listItem: ''Arya'' ] ].
	html mdlTabsPanel id: ''lanisterpanel''; with: [ 
		html unorderedList: [ 
			html listItem: ''Tywin''.
			html listItem: ''Cersei''.
			html listItem: ''Jamie''.
			html listItem: ''Tyrion'' ] ].
	html mdlTabsPanel id: ''targaryenpanel''; with: [ 
		html unorderedList: [ 
			html listItem: ''Viserys''.
			html listItem: ''Daenerys'' ] ] ]'