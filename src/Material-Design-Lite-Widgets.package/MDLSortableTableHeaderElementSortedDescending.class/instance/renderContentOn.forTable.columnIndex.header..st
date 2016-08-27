rendering
renderContentOn: aRenderer forTable: table columnIndex: i header: header
			aRenderer anchor 
				callback: [ table unsorted. header goToNextState ];
				with: [
					aRenderer mdlButton
								icon;
								with: [ aRenderer mdlIcon: 'keyboard_arrow_up' ].
					aRenderer text: header element ]