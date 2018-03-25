demos
renderTabsOn: html
	| famillies |
	famillies := OrderedDictionary
		with: 'Starks' 		-> #('Eddard' 'Catelyn' 'Robb' 'Sansa' 'Brandon' 'Rickon' 'Arya')
		with: 'Lanisters' 	-> #('Tywin' 'Cersei' 'Jamie' 'Tyrion')
		with: 'Targaryens' 	-> #('Viserys' 'Daenerys').
	html
		mdlTabs: [ html mdlTabBar
				rippleEffect;
				with: [ famillies
						keysDo: [ :familly | 
							html mdlTab
								isActiveIf: familly = 'Starks';
								url: '#' , familly;
								with: familly ] ].
			famillies
				keysAndValuesDo: [ :familly :members | 
					html mdlTabsPanel
						isActiveIf: familly = 'Starks';
						id: familly;
						with: [ html unorderedList: [ members do: [ :member | html listItem: member ] ] ] ] ]