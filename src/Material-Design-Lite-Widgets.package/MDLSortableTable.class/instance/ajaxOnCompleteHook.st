accessing
ajaxOnCompleteHook
	"I am a hook to let the user add some javascript after the rendering of a new page. By default I will update the MDL components to initialize the new ones that might be in the table if needed."

	^ ajaxOnCompleteHook ifNil: [ 'componentHandler.upgradeDom();' ]