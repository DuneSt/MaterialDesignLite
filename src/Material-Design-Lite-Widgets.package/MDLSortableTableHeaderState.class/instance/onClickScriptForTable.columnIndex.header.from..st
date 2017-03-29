rendering
onClickScriptForTable: table columnIndex: i header: header from: html
	^ html jQuery ajax
		callback: [ self nextState sortDatasOf: table at: i.
			header goToNextState ];
		onSuccess: (table ajaxUpdateScriptFrom: html)