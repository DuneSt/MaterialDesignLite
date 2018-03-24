demos
renderRadioFullOn: html
	html div
		style: 'display: inline-block; width: 150px;';
		with: [ html radioGroup
				callback: [ :value | value crLog ];
				selected: true;
				with: [ :group | 
					#(true false)
						do: [ :boolean | 
							html mdlRadioContainer
								for: html nextId;
								rippleEffect;
								with: [ group mdlRadioButton
										id: html lastId;
										value: boolean.
									html mdlRadioLabel: [ 
										html text: boolean asString capitalized , '   ' ] ] ] ] ]