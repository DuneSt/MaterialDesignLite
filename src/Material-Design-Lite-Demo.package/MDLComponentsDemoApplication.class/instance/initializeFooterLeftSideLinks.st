initialization
initializeFooterLeftSideLinks
	^ 'Downloads'
		->
			(Dictionary new
				at: 'Pharo' put: [ 'http://pharo.org/' ];
				at: 'MDL project' put: [ 'https://github.com/DuneSt/MaterialDesignLite' ];
				yourself)