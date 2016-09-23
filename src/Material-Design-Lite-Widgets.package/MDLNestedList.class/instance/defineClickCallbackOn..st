rendering
defineClickCallbackOn: div
	^ div storeCallback: (WAValueCallback on: [ :path | self actionBlock value: (self obtainElementForPath: path) ])