private
onCompleteScriptOn: html
	^ html jQuery
		script: [ :s | 
			s
				<<
					((html jQuery id: tableBodyId) load
						html: [ :ajaxHtml | self renderTableBodyOn: ajaxHtml ]);
				<<
					((html jQuery id: arrowsId) load
						html: [ :ajaxHtml | self renderTableArrowsOn: ajaxHtml ]) ]