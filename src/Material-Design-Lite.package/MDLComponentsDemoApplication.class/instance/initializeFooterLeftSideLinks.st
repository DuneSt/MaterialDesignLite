initialization
initializeFooterLeftSideLinks
	^ 'Downloads'
		->
			(Dictionary new
				at: 'Pharo' put: [ 'http://pharo.org/' ];
				at: 'MDL project' put: [ 'http://smalltalkhub.com/#!/~KevinLanvin/MaterialDesignLite' ];
				yourself)