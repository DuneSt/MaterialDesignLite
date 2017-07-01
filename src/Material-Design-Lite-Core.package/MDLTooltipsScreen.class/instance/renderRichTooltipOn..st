code
renderRichTooltipOn: html
	html mdlIcon
		id: html nextId;
		with: 'cloud_upload'.
	html mdlTooltip
		for: html lastId;
		with: [ html text: 'Upload '.
			html strong: 'file.zip' ]