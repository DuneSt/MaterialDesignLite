Description
--------------------

I am a brush to create a MDL tooltip.

Example
--------------------

	html mdlIcon
		id: html nextId;
		with: 'cloud_upload'.
	html mdlTooltip
		for: html lastId;
		with: [ html text: 'Upload '.
			html strong: 'file.zip' ]