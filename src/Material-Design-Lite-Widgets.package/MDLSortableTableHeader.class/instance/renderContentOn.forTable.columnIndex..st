rendering
renderContentOn: aRenderer forTable: table columnIndex: i
		aRenderer
		mdlTableHeading: [ 
			self currentState 
				renderContentOn: aRenderer 
				forTable: table 
				columnIndex: i 
				header: self ]