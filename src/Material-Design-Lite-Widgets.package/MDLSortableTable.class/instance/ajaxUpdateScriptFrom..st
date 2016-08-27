javascript
ajaxUpdateScriptFrom: html
	^ html jQuery
		script: [ :s | 
			s
				<<
					((html jQuery id: id) load
						html: [ :ajaxHtml | self renderTableContentOn: ajaxHtml ];
						onComplete: self ajaxOnCompleteHook) ]