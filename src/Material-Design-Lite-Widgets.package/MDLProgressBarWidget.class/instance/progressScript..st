javascript
progressScript: html
	self flag: #todo.	"Cyril: I think we can clean a little this part. Maybe it should go partly in a javascript file"
	^ html document
		addLoadScript:
			(JSStream on: 'var interval' , id , ' = setInterval(function(){')
				,
					(html jQuery getJson
						json: [ :json | 
							json
								object: [ json key: #progress value: ((100 * self progressionBlock value) asInteger min: 100) ] ];
						onSuccess:
							'if(arguments[0].progress >= 100) window.clearInterval(interval' , id
								,
									');
				document.querySelector(''#' , id
								, ''').MaterialProgress.setProgress(arguments[0].progress);')
				, (JSStream on: ';}, ' , self refreshTime asMilliSeconds asString , ');')